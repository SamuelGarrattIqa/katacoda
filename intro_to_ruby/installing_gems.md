# Using gem command

A [ruby gem](https://rubygems.org/) is a reusable package of code that enables you to perform certain functionality.
Gem's have versions and other metadata. See the [guides of ruby gems](https://guides.rubygems.org/) for more information.  

Ruby gems has more than [150 000 gems](https://rubygems.org/stats) available for you to download for free. It's likely there's a gem to help you do
what you want and it's very easy for you to [create your own](https://guides.rubygems.org/make-your-own-gem/).

To search for a gem that helps you with `mail` just use the `search` command

`gem search mail`{{execute}}
You'll see a long list of gem names and their versions.

To install a gem, use the gem command. `gem install bundler`{{execute}}.

The `bundle` gem installs an executable which can bundle together a list of gems, work out their dependencies and
install them, update their version and keep track of where things are at.
  
Run the executable created from the install with `bundle --version`{{execute}}

# Using bundler and Gemfile
Within your create a `Gemfile`{{open}} with three gems to download from Rubygems

```ruby
source 'https://rubygems.org'

gem 'cucumber'
gem 'rspec', '>= 0.3'
gem 'rubocop', '0.77.0'
```

Install the gems specified with `bundle install`{{execute}}
You will notice that this creates a `Gemfile.lock`.