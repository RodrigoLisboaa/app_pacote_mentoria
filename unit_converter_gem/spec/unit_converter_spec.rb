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

RSpec.describe UnitConverter::DistanceConverter do
  describe '.kilometers_to_miles' do
    it 'converts kilometers to miles correctly' do
      expect(UnitConverter::DistanceConverter.kilometers_to_miles(1)).to eq(0.621371)
      expect(UnitConverter::DistanceConverter.kilometers_to_miles(10)).to eq(6.21371)
    end
  end

  describe '.miles_to_kilometers' do
    it 'converts miles to kilometers correctly' do
      expect(UnitConverter::DistanceConverter.miles_to_kilometers(1)).to eq(1.6093444978925633)
      expect(UnitConverter::DistanceConverter.miles_to_kilometers(10)).to eq(16.093444978925632)
    end
  end

  describe '.meters_to_kilometers' do
    it 'converts meters to kilometers correctly' do
      expect(UnitConverter::DistanceConverter.meters_to_kilometers(1000)).to eq(1)
      expect(UnitConverter::DistanceConverter.meters_to_kilometers(500)).to eq(0.5)
    end
  end

  describe '.kilometers_to_yards' do
    it 'converts kilometers to yards correctly' do
      expect(UnitConverter::DistanceConverter.kilometers_to_yards(1)).to eq(1093.61)
      expect(UnitConverter::DistanceConverter.kilometers_to_yards(10)).to be_within(0.01).of(10936.1)
    end
  end

  describe '.kilometers_to_nautical_miles' do
    it 'converts kilometers to nautical miles correctly' do
      expect(UnitConverter::DistanceConverter.kilometers_to_nautical_miles(1)).to eq(0.539957)
      expect(UnitConverter::DistanceConverter.kilometers_to_nautical_miles(10)).to be_within(0.00001).of(5.39957)
    end
  end
end