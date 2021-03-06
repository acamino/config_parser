module ConfigParser
  class Parser
    class ValueParser
      class Falsey
        def self.try(value)
          falsey_values = %w[false off no]
          false if falsey_values.include?(value)
        end
      end
    end
  end
end
