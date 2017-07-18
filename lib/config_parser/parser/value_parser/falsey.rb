module ConfigParser
  module Parser
    class ValueParser
      class Falsey
        def self.try(value)
          falsey_values = ['false', 'off', 'no']
          false if falsey_values.include?(value)
        end
      end
    end
  end
end
