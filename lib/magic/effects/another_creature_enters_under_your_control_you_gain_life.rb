module Magic
  module Effects
    class AnotherCreatureEntersUnderYourControlYouGainLife
      attr_reader :source, :card, :life
      def initialize(source:, card:, life:)
        @source = source
        @card = card
        @life = life
      end

      def use_stack?
        false
      end

      def requires_choices?
        false
      end

      def resolve
        return if card == source
        return unless card.controller == source.controller
        return unless card.creature?

        source.controller.gain_life(life)
      end
    end
  end
end
