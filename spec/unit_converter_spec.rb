# frozen_string_literal: true

RSpec.describe UnitConverter do
  it "has a version number" do
    expect(UnitConverter::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end


require 'unit_converter'

RSpec.describe UnitConverter::TemperatureConverter do
  describe '.celsius_to_fahrenheit' do
    it 'converts Celsius to Fahrenheit correctly' do
      expect(UnitConverter::TemperatureConverter.celsius_to_fahrenheit(0)).to eq(32)
      expect(UnitConverter::TemperatureConverter.celsius_to_fahrenheit(100)).to eq(212)
    end
  end

  describe '.fahrenheit_to_celsius' do
    it 'converts Fahrenheit to Celsius correctly' do
      expect(UnitConverter::TemperatureConverter.fahrenheit_to_celsius(32)).to eq(0)
      expect(UnitConverter::TemperatureConverter.fahrenheit_to_celsius(212)).to eq(100)
    end
  end

  describe '.celsius_to_kelvin' do
    it 'converts Celsius to Kelvin correctly' do
      expect(UnitConverter::TemperatureConverter.celsius_to_kelvin(0)).to eq(273.15)
      expect(UnitConverter::TemperatureConverter.celsius_to_kelvin(100)).to eq(373.15)
    end
  end

  describe '.kelvin_to_celsius' do
    it 'converts Kelvin to Celsius correctly' do
      expect(UnitConverter::TemperatureConverter.kelvin_to_celsius(273.15)).to eq(0)
      expect(UnitConverter::TemperatureConverter.kelvin_to_celsius(373.15)).to eq(100)
    end
  end

  describe '.fahrenheit_to_kelvin' do
    it 'converts Fahrenheit to Kelvin correctly' do
      expect(UnitConverter::TemperatureConverter.fahrenheit_to_kelvin(32)).to eq(273.15)
      expect(UnitConverter::TemperatureConverter.fahrenheit_to_kelvin(212)).to eq(373.15)
    end
  end

  describe '.kelvin_to_fahrenheit' do
    it 'converts Kelvin to Fahrenheit correctly' do
      expect(UnitConverter::TemperatureConverter.kelvin_to_fahrenheit(273.15)).to eq(32)
      expect(UnitConverter::TemperatureConverter.kelvin_to_fahrenheit(373.15)).to eq(212)
    end
  end
end
