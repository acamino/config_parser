require 'test_helper'

describe ConfigParser do
  it 'has a version number' do
    ::ConfigParser::VERSION.wont_be_nil
  end

  describe '.open_and_parse' do
    it 'opens and parses the config file' do
      file_path = 'test/fixtures/config'
      expected_properties = {
        host: 'test.com',
        server_id: 55_331,
        server_load_alarm: 2.5,
        user: 'john',
        verbose: true,
        test_mode: true,
        debug_mode: false,
        log_file_path: '/tmp/logfile.log',
        send_notifications: true
      }

      ConfigParser.open_and_parse(file_path).must_equal expected_properties
    end
  end
end
