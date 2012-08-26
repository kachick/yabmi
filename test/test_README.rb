$VERBOSE = true

require 'test/declare'
require_relative '../lib/yabmi'


The BMI.calc(50, 1.6) do |basic| 
  is_a BMI::WHO
  
  The basic.index do
    is 19.5
  end
  
  The basic.risk do
    is :normal
  end
    
  The basic.inspect do
    is '#<BMI::WHO: 19.5(normal)>'
  end
end

The BMI.calc(100, 1.6) do |basic|
  The basic.index do
    is 39.1
  end
  
  The basic.risk do
    is :very_obese
  end
  
  The basic.inspect do
    is '#<BMI::WHO: 39.1(very_obese)>'
  end
end

The BMI::Japan.calc(50, 1.6) do |japan|
  is_a BMI::JASSO
  
  The japan.index do
    is 19.5
  end
  
  The japan.risk do
    is :normal
  end
    
  The japan.inspect do
    is '#<BMI::JASSO: 19.5(normal)>'
  end
end

The BMI::Japan.calc(100, 1.6) do |japan|
  The japan.index do
    is 39.1
  end
    
  The japan.risk do
    is :obese3
  end
  
  The japan.inspect do
    is '#<BMI::JASSO: 39.1(obese3)>'
  end
end

