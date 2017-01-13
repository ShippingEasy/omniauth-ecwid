# OmniAuth::Ecwid

OmniAuth strategy for Ecwid OAuth2

## Usage

Use to retrieve an access token for use with the REST API:
https://developers.ecwid.com/api-documentation#complete-oauth-flow

You must first register your application with Ecwid:
https://developers.ecwid.com/api-documentation#external-applications

When you register the application, you will get an 'application ID' and 'shared secret'. These need to be provided when you configure the strategy (this example assumes the values are available in environment variables):

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :ecwid, ENV['APPLICATION_ID'], ENV['SHARED_SECRET']
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-ecwid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-ecwid


## Contributing

1. Fork it ( https://github.com/ShippingEasy/omniauth-ecwid/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
