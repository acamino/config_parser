require_relative '../../../test_helper'

describe ConfigParser::Parser::ValueParser::Fallback do
  describe '.try' do
    it 'returns the same input' do
      parser = ConfigParser::Parser::ValueParser::Fallback
      parser.try('property').must_equal 'property'
    end
  end
end
