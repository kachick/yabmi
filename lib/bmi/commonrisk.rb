class BMI

  module CommonRisk
  
    UPPER_LIMIT = 25
    LOWER_LIMIT = (18.5).to_r
    
    # @return [Symbol]
    def risk
      _risks.find {|symbol|__send__ :"#{symbol}?"} ||
      raise('must not happen')
    end

    def very_obese?
      @index >= 35
    end
    
    def obese?
      @index >= 30
    end
    
    def overweight?
      @index >= UPPER_LIMIT
    end
    
    def normal?
      (LOWER_LIMIT...UPPER_LIMIT).cover? @index
    end
    
    def underweight?
      @index < LOWER_LIMIT
    end
    
    # @return [Fixnum]
    def prime
      100 - ((@index / UPPER_LIMIT) * 100)
    end
    
  end

end
