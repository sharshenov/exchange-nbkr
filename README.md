# National Bank of Kyrgyzstan API adapter for [exchange gem](https://github.com/beatrichartz/exchange)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'exchange-nbkr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exchange-nbkr

## Usage

Setup exchange to use NBKR(National Bank of Kyrgyzstan) currency rates provider.

```ruby
Exchange.configuration = Exchange::Configuration.new do |c|
  c.api.subclass = :nbkr
end
```

Test if it works.

```ruby
100.in(:kgs).to(:usd).to_f
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sharshenov/exchange-nbkr.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

