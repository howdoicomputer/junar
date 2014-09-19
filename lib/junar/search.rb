module Junar
  # Search module for handling datastreams and dashboard queries
  #
  # @author Tyler Hampton
  # @since 0.2.1 
  module Search
    # Returns search results
    #
    # @param [Hash] params the options for searching either datastreams or dashboards
    # @option params [String] :query the query
    # @option params [Integer] :limit the limit on the number of results returned
    # 
    # @return [Array] Array of results
    def search params
      @opts = {
        query: {
          query: params[:query],
          limit: params[:limit],
          auth_key: @token
        }
      }

      self.class.get("/#{@resource}/search", @opts)
    end
  end
end
