# Config Parser

[![Build Status](https://travis-ci.org/acamino/config_parser.svg?branch=master)](https://travis-ci.org/acamino/config_parser)

A simple parser for **config** files.

## Local Development

1. Fork the project [on GitHub](https://github.com/acamino/config_parser)
   and clone your fork locally.

   ```bash
   $ git clone git://github.com/username/config_parser.git
   $ cd config_parser
   $ git remote add upstream https://github.com/acamino/config_parser.git
   ```

1. Run the setup script.

   ```bash
   $ bin/setup
   ```

1. Make sure the tests succeed.

   ```bash
   $ rake test
   ```

## What's a config file?

A config file is a plain text file which must obey the following rules:

1. A property is composed of a key and a value separated by the `=` character
1. A comment is any text prefixed by the `#` character
1. You can express `true` values with **true**, **on**, or **yes**
1. You can express `false` values with **false**, **off**, or **no**


## Quick start

You can use this library like this:

When the configuration file has the right format, the parsing mechanism produces
a hash with it.

```bash
# File's path: /path/to/config
# Configuration file
host = test.com
server_id= 55331
```

```ruby
config = ParserConfig.open_and_parse('/path/to/config')
=> {:host=>"test.com", :server_id=>55331}
```

In the other hand, when the config file is has an invalid format, calling the
parsing method will throw a custom exception. Thus, you can handle this
exception gracefully.

```bash
# File's path: /path/to/config
# Invalid configuration file
host = test.com
server_id 55331
```

```ruby
config = ParserConfig.open_and_parse('/path/to/config')
=> ConfigParser::Parser::InvalidContentError: invalid content "server_id 55331"
```

## Contributing

Edits and enhancements are welcome. Just fork the repository, make your changes
and send me a pull request.

## Licence

The code in this repository is licensed under the terms of the
[MIT License](http://www.opensource.org/licenses/mit-license.html).  
Please see the [LICENSE](LICENSE) file for details.
