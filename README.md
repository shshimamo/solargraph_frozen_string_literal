# SolargraphFrozenStringLiteral

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add solargraph_frozen_string_literal

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install solargraph_frozen_string_literal

## Usage

This is a sample gem from https://solargraph.org/guides/plugins

### sample `.solargraph.yml`
- add `frozen-string` to `reporters`
- add `solargraph_frozen_string_literal` to `plugins`
```
---
include:
- "**/*.rb"
exclude:
- spec/**/*
- test/**/*
- vendor/**/*
- ".bundle/**/*"
require: []
domains: []
reporters:
- rubocop
- require_not_found
- frozen-string
formatter:
  rubocop:
    cops: safe
    except: []
    only: []
    extra_args: []
require_paths: []
plugins:
- solargraph_frozen_string_literal
max_files: 5000
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
