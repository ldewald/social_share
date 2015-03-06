# SocialShare

Easy helper methods for adding custom social share buttons (Facebook, Twitter, and Google+) to your Rails app.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'social_share'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install social_share

## Usage

The `social_share` method takes a title, a url, and an optional services argument.

```ruby
<%= social_share(@video.title, video_path(@video), [:facebook, :twitter, :google_plus]) %>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/social_share/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
