# frozen_string_literal: true

module UnitConverter
  class WeightConverter
    def self.kilograms_to_pounds(kg)
      kg * 2.20462
    end

    def self.pounds_to_kilograms(pounds)
      pounds / 2.20462
    end

    def self.kilograms_to_ounces(kg)
      kg * 35.274
    end

    def self.ounces_to_kilograms(ounces)
      ounces / 35.274
    end

    def self.pounds_to_ounces(pounds)
      pounds * 16.0
    end

    def self.ounces_to_pounds(ounces)
      ounces / 16.0
    end
  end
end