require_relative '../../../test_helper'

describe ConfigParser::Parser::ValueParser::Truthy do
  describe '.try' do
    let(:parser) { ConfigParser::Parser::ValueParser::Truthy }

    context 'when the value is truthy' do
      it 'returns true' do
        parser.try('on').must_equal true
      end
    end

    context 'when the value is not truthy' do
      it 'returns nil' do
        parser.try('off').must_be_nil
      end
    end
  end
end
