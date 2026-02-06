# frozen_string_literal: true

module Amocrm
  module Resources
    class V2
      # Run salesbot (batch, up to 100 tasks).
      #
      # @overload salesbot_run(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V2SalesbotRunParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse, Amocrm::Models::V2SalesbotRunResponse::Problem]
      #
      # @see Amocrm::Models::V2SalesbotRunParams
      def salesbot_run(params)
        parsed, options = Amocrm::V2SalesbotRunParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v2/salesbot/run",
          body: parsed[:body],
          model: Amocrm::Models::V2SalesbotRunResponse,
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
