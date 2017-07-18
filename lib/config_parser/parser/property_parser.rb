module ConfigParser
  class Parser
    class PropertyParser
      def initialize(line)
        @line = line
      end

      def parse
        raise InvalidContentError, "invalid content: #{line}" unless valid?

        prop_delimeter = '='
        prop = line.split(prop_delimeter)
        Property.new(
          prop[0].strip.to_sym, ValueParser.new(prop[1].strip).parse
        )
      end

      private

      attr_reader :line

      def valid?
        @line.count('=') == 1
      end
    end

    class InvalidContentError < ArgumentError; end
  end
end
