module ConfigParser
  module Parser
    class PropertyParser
      def initialize(line)
        @line = line
      end

      def parse
        raise InvalidPropertyError, "invalid property #{line}" unless valid?

        prop_delimeter = '='
        prop = line.split(prop_delimeter)
        Property.new(
          prop[0].strip, ValueParser.new(prop[1].strip).parse
        )
      end

      private

      attr_reader :line

      def valid?
        @line.count('=') == 1
      end
    end

    class InvalidPropertyError < ArgumentError; end
  end
end
