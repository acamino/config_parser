require_relative '../../../test_helper'

describe ConfigParser::Parser::ValueParser::Falsey do
  describe '.try' do
    let(:parser) { ConfigParser::Parser::ValueParser::Falsey }

    context 'when the value is falsey' do
      it 'returns false' do
        parser.try('off').must_equal false
      end
    end

    context 'when the value is not falsey' do
      it 'returns nil' do
        parser.try('on').must_be_nil
      end
    end
  end
end
