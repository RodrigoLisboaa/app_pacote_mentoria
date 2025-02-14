# frozen_string_literal: true

module UnitConverter
  class VolumeConverter
    def self.liters_to_gallons(liters)
      liters * 0.264172
    end

    def self.gallons_to_liters(gallons)
      gallons / 0.264172
    end

    def self.liters_to_quarts(liters)
      liters * 1.05669
    end

    def self.quarts_to_liters(quarts)
      quarts / 1.05669
    end

    def self.gallons_to_quarts(gallons)
      gallons * 4.0
    end

    def self.quarts_to_gallons(quarts)
      quarts / 4.0
    end

    def self.tablespoons_to_ml(tablespoons)
      tablespoons * 14.7868
    end

    def self.ml_to_tablespoons(ml)
      ml / 14.7868
    end

    def self.cups_to_liters(cups)
      cups * 0.236588
    end

    def self.liters_to_cups(liters)
      liters / 0.236588
    end

    def self.cups_to_ml(cups)
      cups * 236.588
    end

    def self.ml_to_cups(ml)
      ml / 236.588
    end

    def self.cups_to_pints(cups)
      cups * 0.5
    end

    def self.pints_to_cups(pints)
      pints / 0.5
    end

    def self.pints_to_liters(pints)
      pints * 0.473176
    end

    def self.liters_to_pints(liters)
      liters / 0.473176
    end

    def self.pints_to_quarts(pints)
      pints * 0.5
    end

    def self.quarts_to_pints(quarts)
      quarts / 0.5
    end

    def self.quarts_to_ml(quarts)
      quarts * 946.353
    end

    def self.ml_to_quarts(ml)
      ml / 946.353
    end

    def self.gallons_to_ml(gallons)
      gallons * 3785.41
    end

    def self.ml_to_gallons(ml)
      ml / 3785.41
    end

    def self.pints_to_gallons(pints)
      pints * 0.125
    end

    def self.gallons_to_pints(gallons)
      gallons / 0.125
    end

    def self.pints_to_cups(pints)
      pints * 2.0
    end

    def self.cups_to_pints(cups)
      cups / 2.0
    end

    def self.quarts_to_gallons(quarts)
      quarts * 0.25
    end

    def self.gallons_to_quarts(gallons)
      gallons / 0.25
    end

    def self.ml_to_liters(ml)
      ml * 0.001
    end

    def self.liters_to_ml(liters)
      liters / 0.001
    end

    def self.ml_to_teaspoons(ml)
      ml / 4.92892
    end

    def self.teaspoons_to_ml(teaspoons)
      teaspoons * 4.92892
    end
  end
end