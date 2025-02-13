# frozen_string_literal: true

module UnitConverter
  class DistanceConverter
    def self.kilometers_to_miles(km)
      km * 0.621371
    end

    def self.miles_to_kilometers(miles)
      miles / 0.621371
    end

    def self.meters_to_kilometers(meters)
      meters / 1000.0
    end

    def self.kilometers_to_yards(kilometers)
      kilometers * 1093.61
    end

    def self.kilometers_to_nautical_miles(kilometers)
      kilometers * 0.539957
    end
  end
end