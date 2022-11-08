# yabmi

[![Build Status](https://github.com/kachick/yabmi/actions/workflows/test_behaviors.yml/badge.svg?branch=main)](https://github.com/kachick/yabmi/actions/workflows/test_behaviors.yml/?branch=main)
[![Gem Version](https://badge.fury.io/rb/yabmi.svg)](https://badge.fury.io/rb/yabmi)

## Description

- Yet another BMI library.

## Usage

### Overview

```ruby
require 'yabmi'

BMI::USA.calc    50, 1.6   #=> #<BMI::WHO: 19.5(normal)>
BMI::USA.calc   100, 1.6   #=> #<BMI::WHO: 39.1(very_obese)>
BMI::Japan.calc  50, 1.6   #=> #<BMI::JASSO: 19.5(normal)>
BMI::Japan.calc 100, 1.6   #=> #<BMI::JASSO: 39.1(obese3)>
```

## Links

- [Repository](https://github.com/kachick/yabmi)
- [API documents](https://kachick.github.io/yabmi/)

## License

The MIT X License
Copyright (c) 2012 Kenichi Kamiya
See the file LICENSE for further details.
