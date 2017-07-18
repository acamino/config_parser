require_relative '../../../test_helper'

describe ConfigParser::Parser::ValueParser::Numeric do
  describe '.try' do
    let(:parser) { ConfigParser::Parser::ValueParser::Numeric }

    context 'when the value is an integer' do
      it 'returns an integer' do
        parser.try('100').must_be_kind_of Integer
        parser.try('100').must_equal 100
      end
    end

    context 'when the value is a float' do
      it 'returns a float' do
        parser.try('100.01').must_be_kind_of Float
        parser.try('100.01').must_equal 100.01
      end
    end

    context 'when the value is not a number' do
      it 'returns nil' do
        parser.try('not-a-number').must_be_nil
      end
    end
  end
end
