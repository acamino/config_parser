require_relative '../../test_helper'

describe ConfigParser::Parser::ValueParser do
  describe '.parser' do

    context 'when the value is truthy' do
      it 'returns true' do
        parser = ConfigParser::Parser::ValueParser.new('true')
        parser.parse.must_equal true
      end
    end

    context 'when the value is falsey' do
      it 'returns true' do
        parser = ConfigParser::Parser::ValueParser.new('no')
        parser.parse.must_equal false
      end
    end

    context 'when the value is an integer' do
      it 'returns a number' do
        parser = ConfigParser::Parser::ValueParser.new('101')
        parser.parse.must_equal 101
      end
    end

    context 'when the value is a float' do
      it 'returns a number' do
        parser = ConfigParser::Parser::ValueParser.new('101.01')
        parser.parse.must_equal 101.01
      end
    end

    context 'when the value is not boolean or numeric' do
      it 'returns the same value' do
        parser = ConfigParser::Parser::ValueParser.new('a-value')
        parser.parse.must_equal 'a-value'
      end
    end
  end
end
