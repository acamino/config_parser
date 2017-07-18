require_relative '../../test_helper'

describe ConfigParser::Parser::PropertyParser do
  describe '#parse' do
    context 'when the line is valid' do
      it 'returns a property' do
        line = 'send_notifications = yes'
        parser = ConfigParser::Parser::PropertyParser.new(line)
        parser.parse.must_equal ConfigParser::Property.new('send_notifications', true)
      end
    end

    context 'when the line is invalid' do
      it 'returns a property' do
        line = 'send_notifications off'
        parser = ConfigParser::Parser::PropertyParser.new(line)
        -> {
          parser.parse
        }.must_raise ConfigParser::Parser::InvalidPropertyError
      end
    end
  end
end
