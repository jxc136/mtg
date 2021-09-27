module Magic
  module Cards
    class Shatter < Instant
      NAME = "Shatter"
      COST = { any: 1, red: 1 }

      def resolve!
        game.add_effect(
          Effects::Destroy.new(
            valid_targets: -> (c) { c.artifact? }
          )
        )
        super
      end
    end
  end
end
