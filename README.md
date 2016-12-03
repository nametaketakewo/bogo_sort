# BogoSort

This gem add bogo_sort (that f*ckin' sort algorithm) to Array objects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bogo_sort'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bogo_sort

## Usage

```ruby
require 'bogo_sort'

# You'll be able to use Array#bogosort (this is an alias for: Array#bogo_sort)
p [1, 3, 1, 4, -3, 5].bogosort  #=> [-3, 1, 1, 3, 4, 5]
p [1.1, 1.3, 1.1, 1.4, -1.3, 1.5].bogosort  #=> [-1.3, 1.1, 1.1, 1.3, 1.4, 1.5]
p %w(a c a d c e).bogosort  #=> ["a", "a", "c", "c", "d", "e"]
p [:a, :c, :a, :d, :c, :e].bogosort  #=> [:a, :a, :c, :c, :d, :e]
p [1.1, 1.3, 1, 2, -1.3, 5.5].bogo_sort  #=> [-1.3, 1, 1.1, 1.3, 2, 5.5]

# And Array#bogosort! (this is an alias for: Array#bogo_sort!)
array = [1, 3, 1, 4, -3, 5]
array.bogosort!
p array  #=> [-3, 1, 1, 3, 4, 5]

# But Array#bogo_sort can't sort Array include some Classes that can't compared
# At this time, Array#bogo_sort return nil
p [1, 'b', 1.3, :d].bogosort  #=> nil
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nametaketakewo/bogo_sort. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
