require 'config_parser/parser/value_parser/truthy'
require 'config_parser/parser/value_parser/falsey'
require 'config_parser/parser/value_parser/numeric'
require 'config_parser/parser/value_parser/fallback'

module ConfigParser
  class Parser
    class ValueParser
      PARSERS = [
        Truthy,
        Falsey,
        Numeric,
        Fallback
      ].freeze

      def initialize(raw_value)
        @raw_value = raw_value
      end

      def parse
        value = nil
        PARSERS.each do |parser|
          value = parser.try(@raw_value)
          break unless value.nil?
        end

        value
      end
    end
  end
end
