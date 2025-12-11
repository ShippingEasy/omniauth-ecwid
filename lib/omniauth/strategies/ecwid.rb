require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Ecwid < OmniAuth::Strategies::OAuth2

      option :name, "ecwid"
      option :client_options, {
        :site => 'https://my.ecwid.com',
        :authorize_url => '/api/oauth/authorize'
      }

      # scope: "read_orders update_catalog", etc
      # grant_type: "code"
      option :authorize_options, [:scope, :grant_type]

      uid {
        access_token.params.fetch("store_id")
      }

      protected

      # Override to set token_url with store_id from callback params
      def build_access_token
        store_id = request.params['store_id']
        options.client_options[:token_url] = "/api/oauth/token/#{store_id}"
        super
      end
    end
  end
end
