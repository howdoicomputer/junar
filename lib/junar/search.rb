module Junar
  class Client
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
            auth_key: @token,
            limit: params[:limit]
          }
        }

        self.class.get("/#{params[:category]}/search", @opts)
      end
    end
  end
end
