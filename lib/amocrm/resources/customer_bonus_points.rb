# frozen_string_literal: true

module Amocrm
  module Resources
    class CustomerBonusPoints
      # Earn or redeem bonus points.
      #
      # @overload change(customer_id, body:, request_options: {})
      #
      # @param customer_id [Integer]
      # @param body [Amocrm::Models::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn, Amocrm::Models::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem]
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
          body: parsed[:body],
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
