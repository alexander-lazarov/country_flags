# Readme

[![Gem Version](https://badge.fury.io/rb/country_flags.svg)](http://badge.fury.io/rb/country_flags)

Gemified collection of
[country flags](http://www.famfamfam.com/lab/icons/flags/).

## Usage

Add to your Gemfile:

```ruby
gem 'country_flags'
```

Run:

```bash
bundle install
```

In views:
```ruby

# using helper
country_flag 'bg'
country_flag 'bg', format: 'gif'

image_tag country_flag_path 'bg'
image_tag country_flag_path 'bg', :gif

# gif version
image_tag 'country_flags/gif/bg.gif'

# png version
image_tag 'country_flags/png/bg.gif'
```

## Testing

Use `rspec` to run the tests.

```bash
bundle exec rspec
```

## Credit

Country flags are made by [famfamfam](http://www.famfamfam.com/).

## Contributing

Your contributions are welcome. Please fork the project, make a new branch and
send me a pull request.
