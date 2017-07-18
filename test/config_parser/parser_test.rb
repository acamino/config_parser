require_relative '../test_helper'

describe ConfigParser::Parser do
  describe '#parse' do
    context 'when the contets are valid' do
      it 'parses the contents' do
        valid_contents = [
          '# This is what a comment looks like, ignore it',
          'server_load_alarm=2.5',
          'user= john # comment can appear here as well',
          'test_mode = off'
        ].join("\n")
        parser = ConfigParser::Parser.new(valid_contents)
        parser.parse.must_equal server_load_alarm: 2.5, user: 'john', test_mode: false
      end
    end

    context 'when the contets are invalid' do
      it 'parses the contents' do
        invalid_contents = [
          '# This is what a comment looks like, ignore it',
          'server_load_alarm 2.5',
          'user= john # comment can appear here as well',
          'test_mode = off'
        ].join("\n")
        parser = ConfigParser::Parser.new(invalid_contents)
        error = lambda do
          parser.parse
        end.must_raise ConfigParser::Parser::InvalidContentError
        error.message.must_equal 'invalid content: server_load_alarm 2.5'
      end
    end
  end
end
