require 'httparty'

# Anything to do with providing a client object
#
# @author Tyler Hampton
# @since 0.1.1
module Junar
  class Client
    include HTTParty
    attr_reader :token
    attr_reader :uri

    # Initialize a new Client object
    #
    # @param [Hash] opts
    #   @option opts [String] :token Manually load the API token
    #
    # @return [Junar::Client] An API handle object for doing CRUD operations
    def initialize(opts={})
      @token = opts[:token]
      @uri = opts[:uri]

      # Set the base URI for the api at a class level
      self.class.base_uri @uri
    end
  end
end
