require 'hashie'
require 'json'
require 'junar/search'

module Junar
  class Client
    include Junar::Search
    attr_reader :resource

    # Defines the datastream URI
    #
    # @return [String] A string that represents the datastream
    def datastream
      @resource = "datastream"
      self
    end

    # Invoke is particular to datastream and is similar to a fetch but you can specify the return type for the data
    #
    # @param [String] guid A guaranteed unique ID that points to the stream you want
    # @param [Integer] limit The limit on results returned by the call
    # @param [String] output The output spit out by the API
    #
    # @return [JSON] The JSON output
    # @note I'm only going to concern my myself with processing JSON and turning it into something better 
    def invoke params
      @opts = {
        query: {
          limit: params[:limit],
          output: params[:output],
          auth_key: @token
        }
      }

      self.class.get("/#{@resource}/invoke/#{params[:guid]}", @opts)
    end

    private

    # Takes the output of any API call that returns a datastream object and massages it into a butter data structure
    #
    # @param [JSON] json A JSON object
    # @return [Hashie::Mash] A Mash styled Hash to better represent a datastream
    def mashify json
      parse = JSON.parse(json)
      stream = Hashie::Mash.new()
    end
  end
end
