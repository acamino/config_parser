module ConfigParser
  module Parser
    class PropertyParser
      def initialize(line)
        @line = line
      end

      def parse
        if valid?
          prop_delimeter = '='
          prop = line.split(prop_delimeter)
          Property.new(
            prop[0].strip, ValueParser.new(prop[1].strip).parse
          )
        else
          raise InvalidPropertyError, "invalid property #{line}"
        end
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
