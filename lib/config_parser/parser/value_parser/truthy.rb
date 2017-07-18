module ConfigParser
  module Parser
    class ValueParser
      class Truthy
        def self.try(value)
          truthy_values = ['true', 'on', 'yes']
          true if truthy_values.include?(value)
        end
      end
    end
  end
end
