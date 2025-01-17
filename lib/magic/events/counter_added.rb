module Magic
  module Events
    class CounterAdded
      attr_reader :permanent, :player, :counter_type, :amount

      def initialize(permanent: nil, player: nil, counter_type:, amount:)
        @permanent = permanent
        @player = player
        @counter_type = counter_type
        @amount = amount
      end

      def inspect
        "#<Events::CounterAdded player: #{player&.name}, permanent: #{permanent&.name}, type: #{counter_type}, amount: #{amount}>"
      end
    end
  end
end
