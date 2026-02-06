# frozen_string_literal: true

module Amocrm
  module Resources
    class Calls
      # Add calls (batch).
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CallCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CallCreateResponse::CallCreateResponse, Amocrm::Models::CallCreateResponse::Problem]
      #
      # @see Amocrm::Models::CallCreateParams
      def create(params)
        parsed, options = Amocrm::CallCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/calls",
          body: parsed[:body],
          model: Amocrm::Models::CallCreateResponse,
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
