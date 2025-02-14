# frozen_string_literal: true

RSpec.describe UnitConverter do
  it "has a version number" do
    expect(UnitConverter::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end

require 'spec_helper'
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

RSpec.describe UnitConverter::WeightConverter do
  describe '.kilograms_to_pounds' do
    it 'converts kilograms to pounds correctly' do
      expect(UnitConverter::WeightConverter.kilograms_to_pounds(1)).to eq(2.20462)
      expect(UnitConverter::WeightConverter.kilograms_to_pounds(10)).to eq(22.0462)
    end
  end

  describe '.pounds_to_kilograms' do
    it 'converts pounds to kilograms correctly' do
      expect(UnitConverter::WeightConverter.pounds_to_kilograms(1)).to be_within(0.00001).of(0.453592)
      expect(UnitConverter::WeightConverter.pounds_to_kilograms(10)).to be_within(0.00001).of(4.53592)
    end
  end

  describe '.kilograms_to_ounces' do
    it 'converts kilograms to ounces correctly' do
      expect(UnitConverter::WeightConverter.kilograms_to_ounces(1)).to eq(35.274)
      expect(UnitConverter::WeightConverter.kilograms_to_ounces(10)).to eq(352.74)
    end
  end

  describe '.ounces_to_kilograms' do
    it 'converts ounces to kilograms correctly' do
      expect(UnitConverter::WeightConverter.ounces_to_kilograms(1)).to be_within(0.00001).of(0.0283495)
      expect(UnitConverter::WeightConverter.ounces_to_kilograms(10)).to be_within(0.00001).of(0.283495)
    end
  end

  describe '.pounds_to_ounces' do
    it 'converts pounds to ounces correctly' do
      expect(UnitConverter::WeightConverter.pounds_to_ounces(1)).to eq(16)
      expect(UnitConverter::WeightConverter.pounds_to_ounces(10)).to eq(160)
    end
  end

  describe '.ounces_to_pounds' do
    it 'converts ounces to pounds correctly' do
      expect(UnitConverter::WeightConverter.ounces_to_pounds(1)).to eq(0.0625)
      expect(UnitConverter::WeightConverter.ounces_to_pounds(10)).to eq(0.625)
    end
  end
end

RSpec.describe UnitConverter::VolumeConverter do
  describe ".liters_to_gallons" do
    it "converts liters to gallons correctly" do
      expect(UnitConverter::VolumeConverter.liters_to_gallons(1)).to be_within(0.0001).of(0.264172)
    end
  end

  describe ".gallons_to_liters" do
    it "converts gallons to liters correctly" do
      expect(UnitConverter::VolumeConverter.gallons_to_liters(1)).to be_within(0.0001).of(3.78541)
    end
  end

  describe ".liters_to_quarts" do
    it "converts liters to quarts correctly" do
      expect(UnitConverter::VolumeConverter.liters_to_quarts(1)).to be_within(0.0001).of(1.05669)
    end
  end

  describe ".quarts_to_liters" do
    it "converts quarts to liters correctly" do
      expect(UnitConverter::VolumeConverter.quarts_to_liters(1)).to be_within(0.0001).of(0.946353)
    end
  end

  describe ".gallons_to_quarts" do
    it "converts gallons to quarts correctly" do
      expect(UnitConverter::VolumeConverter.gallons_to_quarts(1)).to eq(4.0)
    end
  end

  describe ".quarts_to_gallons" do
    it "converts quarts to gallons correctly" do
      expect(UnitConverter::VolumeConverter.quarts_to_gallons(1)).to eq(0.25)
    end
  end

  describe ".tablespoons_to_ml" do
    it "converts tablespoons to milliliters correctly" do
      expect(UnitConverter::VolumeConverter.tablespoons_to_ml(1)).to be_within(0.0001).of(14.7868)
    end
  end

  describe ".ml_to_tablespoons" do
    it "converts milliliters to tablespoons correctly" do
      expect(UnitConverter::VolumeConverter.ml_to_tablespoons(1)).to be_within(0.0001).of(0.067628)
    end
  end

  describe ".cups_to_liters" do
    it "converts cups to liters correctly" do
      expect(UnitConverter::VolumeConverter.cups_to_liters(1)).to be_within(0.0001).of(0.236588)
    end
  end

  describe ".liters_to_cups" do
    it "converts liters to cups correctly" do
      expect(UnitConverter::VolumeConverter.liters_to_cups(1)).to be_within(0.0001).of(4.22675)
    end
  end

  describe ".cups_to_ml" do
    it "converts cups to milliliters correctly" do
      expect(UnitConverter::VolumeConverter.cups_to_ml(1)).to eq(236.588)
    end
  end

  describe ".ml_to_cups" do
    it "converts milliliters to cups correctly" do
      expect(UnitConverter::VolumeConverter.ml_to_cups(1)).to be_within(0.0001).of(0.00422675)
    end
  end

  describe ".pints_to_liters" do
    it "converts pints to liters correctly" do
      expect(UnitConverter::VolumeConverter.pints_to_liters(1)).to be_within(0.0001).of(0.473176)
    end
  end

  describe ".liters_to_pints" do
    it "converts liters to pints correctly" do
      expect(UnitConverter::VolumeConverter.liters_to_pints(1)).to be_within(0.0001).of(2.11338)
    end
  end

  describe ".gallons_to_ml" do
    it "converts gallons to milliliters correctly" do
      expect(UnitConverter::VolumeConverter.gallons_to_ml(1)).to eq(3785.41)
    end
  end

  describe ".ml_to_gallons" do
    it "converts milliliters to gallons correctly" do
      expect(UnitConverter::VolumeConverter.ml_to_gallons(1)).to be_within(0.0001).of(0.000264172)
    end
  end
end