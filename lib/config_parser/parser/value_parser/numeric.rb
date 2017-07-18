module ConfigParser
  module Parser
    class ValueParser
      class Numeric
        def self.try(value)
          Integer(value) rescue \
            Float(value) rescue \
            nil
        end
      end
    end
  end
end
