module Magic
  module Cards
    class VastwoodGorger < Creature
      NAME = "Vastwood Gorger"
      COST = { any: 5, green: 1 }
      TYPE_LINE = creature_type("Wurm")
      POWER = 5
      TOUGHNESS = 6
    end
  end
end
