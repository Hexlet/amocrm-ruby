# frozen_string_literal: true

module Amocrm
  module Resources
    class CustomerBonusPoints
      # Earn or redeem bonus points.
      #
      # @overload change(customer_id, earn:, redeem:, request_options: {})
      #
      # @param customer_id [Integer]
      # @param earn [Integer]
      # @param redeem [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerBonusPointChangeResponse::CustomerBonusPointsResponse, Amocrm::Models::CustomerBonusPointChangeResponse::Problem]
      #
      # @see Amocrm::Models::CustomerBonusPointChangeParams
      def change(customer_id, params)
        parsed, options = Amocrm::CustomerBonusPointChangeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/customers/%1$s/bonus_points", customer_id],
          body: parsed,
          model: Amocrm::Models::CustomerBonusPointChangeResponse,
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
