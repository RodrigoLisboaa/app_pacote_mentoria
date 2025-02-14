# frozen_string_literal: true

require_relative "unit_converter/version"
require_relative "unit_converter/temperature_converter"
require_relative "unit_converter/distance_converter"
require_relative "unit_converter/weight_converter"

module UnitConverter
  class TemperatureConverter
    def self.celsius_to_fahrenheit(celsius)
      celsius * 9 / 5 + 32
    end

    def self.fahrenheit_to_celsius(fahrenheit)
      (fahrenheit - 32) * 5 / 9
    end

    def self.celsius_to_kelvin(celsius)
      celsius + 273.15
    end

    def self.kelvin_to_celsius(kelvin)
      kelvin - 273.15
    end

    def self.fahrenheit_to_kelvin(fahrenheit)
      (fahrenheit - 32) * 5 / 9 + 273.15
    end

    def self.kelvin_to_fahrenheit(kelvin)
      (kelvin - 273.15) * 9 / 5 + 32
    end
  end
end
