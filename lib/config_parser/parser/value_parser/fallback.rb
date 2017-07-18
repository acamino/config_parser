module ConfigParser
  module Parser
    class ValueParser
      class Fallback
        def self.try(value)
          value
        end
      end
    end
  end
end
