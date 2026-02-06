# frozen_string_literal: true

module Amocrm
  module Resources
    class Salesbot
      # Run salesbot (batch, up to 100 tasks).
      #
      # @overload run(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::SalesbotRunParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::SalesbotRunResponse::SalesbotRunResponse, Amocrm::Models::SalesbotRunResponse::Problem]
      #
      # @see Amocrm::Models::SalesbotRunParams
      def run(params)
        parsed, options = Amocrm::SalesbotRunParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v2/salesbot/run",
          body: parsed[:body],
          model: Amocrm::Models::SalesbotRunResponse,
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
