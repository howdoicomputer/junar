module Junar
  class Client
    module Search
      # Returns search results
      #
      # @param [String] Query
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
