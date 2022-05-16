# frozen_string_literal: true

require_relative 'commonrisk'

class BMI
  class JASSO < self
    include CommonRisk

    def obese1?
      (25...30).cover?(@index)
    end

    def obese2?
      (30...35).cover?(@index)
    end

    def obese3?
      (35...40).cover?(@index)
    end

    def obese4?
      @index >= 40
    end

    private

    def _risks
      [
        :obese4,
        :obese3,
        :obese2,
        :obese1,
        :normal,
        :underweight
      ]
    end
  end
end
