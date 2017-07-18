require 'config_parser/version'
require 'config_parser/parser/value_parser/truthy'
require 'config_parser/parser/value_parser/falsey'
require 'config_parser/parser/value_parser/numeric'
require 'config_parser/parser/value_parser/fallback'
require 'config_parser/parser/value_parser'
require 'config_parser/parser/property_parser'
require 'config_parser/property'
require 'config_parser/parser'

module ConfigParser
  module_function

  # Parses the contens of a config file
  # @param contents<String> the config file's contents
  # @return <Hash>
  def parse(contents)
    Parser.new(contents).parse
  end

  # Opens and parses a config file
  # @param path<String> the path to the config file
  # @return <Hash>
  def open_and_parse(path)
    parse(File.read(path))
  end
end
