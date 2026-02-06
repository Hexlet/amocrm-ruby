# frozen_string_literal: true

module Amocrm
  module Resources
    class CustomersMode
      # Enable or switch customers mode.
      #
      # @overload set_mode(is_enabled:, mode:, request_options: {})
      #
      # @param is_enabled [Boolean]
      # @param mode [Symbol, Amocrm::Models::CustomersModeSetModeParams::Mode]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomersModeSetModeResponse::CustomerModeResponse, Amocrm::Models::CustomersModeSetModeResponse::Problem]
      #
      # @see Amocrm::Models::CustomersModeSetModeParams
      def set_mode(params)
        parsed, options = Amocrm::CustomersModeSetModeParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/customers/mode",
          body: parsed,
          model: Amocrm::Models::CustomersModeSetModeResponse,
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
