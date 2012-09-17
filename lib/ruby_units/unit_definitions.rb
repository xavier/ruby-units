if defined?(BigDecimal)
  require 'ruby_units/unit_definitions/prefix_bigdecimal'
  require 'ruby_units/unit_definitions/base'
  require 'ruby_units/unit_definitions/standard_bigdecimal'
else
  require 'ruby_units/unit_definitions/prefix'
  require 'ruby_units/unit_definitions/base'
  require 'ruby_units/unit_definitions/standard'
end