# frozen_string_literal: true

# Copyright (C) 2012 Kenichi Kamiya

require_relative 'bmi/who'
require_relative 'bmi/jasso'

# Immutable
# @abstract
class BMI
  include YABMI
  USA = WHO
  Japan = JASSO

  class << self
    # @param [Number] weight_kg
    # @param [Number] height_m
    # @return [BMI]
    def calc(weight_kg, height_m)
      concrete = (equal?(BMI) ? WHO : self)
      concrete.new(weight_kg.to_r / (height_m.to_r ** 2))
    end
  end

  # @param [Number] index
  def initialize(index)
    raise RangeError unless index > 0

    @index = index.to_r
  end

  # @return [Float]
  def index
    @index.to_f.round(1)
  end

  alias_method :bmi, :index

  def bmi?
    true
  end

  # @return [String]
  def inspect
    "#<#{self.class}: #{index}(#{risk})>"
  end

  # @return [String]
  def to_s
    index.to_s
  end

  def eql?(other)
    other.respond_to?(:bmi?) && other.bmi? && (other._index == _index)
  end

  # @return [Boolean]
  def ==(other)
    other.respond_to?(:bmi?) && other.bmi? && (other.index == index)
  end

  alias_method :===, :==

  # @return [Number]
  def hash
    @index.hash
  end

  protected

  def _index
    @index
  end
end
