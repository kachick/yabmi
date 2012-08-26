yabmi
=====

Description
-----------

* Yet another BMI library.

Features
--------

* in USA
* in Japan

Usage
-----

### Overview

```ruby
require 'yabmi'

BMI::USA.calc    50, 1.6   #=> #<BMI::WHO: 19.5(normal)>
BMI::USA.calc   100, 1.6   #=> #<BMI::WHO: 39.1(very_obese)>
BMI::Japan.calc  50, 1.6   #=> #<BMI::JASSO: 19.5(normal)>
BMI::Japan.calc 100, 1.6   #=> #<BMI::JASSO: 39.1(obese3)>
```

Requirements
------------

* Ruby 1.9.2 or later

  MRI/YARV, Rubinius, JRuby: http://travis-ci.org/#!/kachick/yabmi

Install
-------

```shell
$ gem install yabmi
```

Link
----

* code: https://github.com/kachick/yabmi
* issues: https://github.com/kachick/yabmi/issues
* CI: http://travis-ci.org/#!/kachick/yabmi
* gem: https://rubygems.org/gems/yabmi
* gem+: http://metagem.info/gems/yabmi

License
-------

The MIT X License

Copyright (c) 2012 Kenichi Kamiya

See the file LICENSE for further details.
