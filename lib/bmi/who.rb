# frozen_string_literal: true

require_relative 'commonrisk'

class BMI
  class WHO < self
    include CommonRisk

    def very_underweight?
      @index <= 15
    end

    private

    def _risks
      [
        :very_obese,
        :obese,
        :overweight,
        :normal,
        :very_underweight,
        :underweight
      ]
    end
  end
end
