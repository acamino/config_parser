module ConfigParser
  class Parser
    class ValueParser
      class Numeric
        def self.try(value)
          return value.to_i if integer?(value)
          Float(value)
        rescue ArgumentError
          nil
        end

        class << self
          def integer?(value)
            integer_regexp = /\A\d+\z/
            value =~ integer_regexp
          end
        end
      end
    end
  end
end
