# frozen_string_literal: true

module Amocrm
  module Resources
    class Account
      # Get account info.
      #
      # @overload get(with: nil, request_options: {})
      #
      # @param with [String] Additional data to include (comma-separated).
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::AccountGetResponse::AccountInfo, Amocrm::Models::AccountGetResponse::Problem]
      #
      # @see Amocrm::Models::AccountGetParams
      def get(params = {})
        parsed, options = Amocrm::AccountGetParams.dump_request(params)
        query = Amocrm::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/v4/account",
          query: query,
          model: Amocrm::Models::AccountGetResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Amocrm::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
