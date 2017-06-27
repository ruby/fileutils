# Fileutils
[![Build Status](https://travis-ci.org/ruby/fileutils.svg?branch=master)](https://travis-ci.org/ruby/fileutils)

Namespace for several file utility methods for copying, moving, removing, etc.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fileutils'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fileutils

## Usage

Just call `FileUtils` methods. For example:

```ruby
FileUtils.mkdir('somefile')
# => ["somefile"]

FileUtils.pwd
# => "~/fileutils"
```

Full method list you can find in [documentation](https://ruby-doc.org/stdlib-1.9.3/libdoc/fileutils/rdoc/FileUtils.html).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/fileutils.

## License

The gem is available as open source under the terms of the [The 2-Clause BSD License](https://opensource.org/licenses/BSD-2-Clause).

