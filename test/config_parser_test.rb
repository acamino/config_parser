require 'test_helper'

class ConfigParserTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ConfigParser::VERSION
  end
end
