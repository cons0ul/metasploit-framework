# -*- coding:binary -*-

require 'spec_helper'
require 'msf/core/option_container'

describe Msf::OptPath do
  valid_values = [
    { :value => __FILE__, :normalized => __FILE__   },
  ]
  invalid_values = [
    { :value => "yer mom", },
    { :value => "0.1",     },
    { :value => "-1",      },
    { :value => "65536",   },
    { :value => "$",    },
  ]

  it_behaves_like "an option", valid_values, invalid_values
end

