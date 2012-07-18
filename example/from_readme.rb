$VERBOSE = true

require_relative '../lib/yabmi'

p BMI::USA.calc    50, 1.6
p BMI::USA.calc   100, 1.6
p BMI::Japan.calc  50, 1.6
p BMI::Japan.calc 100, 1.6