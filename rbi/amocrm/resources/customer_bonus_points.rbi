# typed: strong

module Amocrm
  module Resources
    class CustomerBonusPoints
      # Earn or redeem bonus points.
      sig do
        params(
          customer_id: Integer,
          body:
            T.any(
              Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn::OrHash,
              Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem::OrHash
            ),
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerBonusPointChangeResponse::Variants)
      end
      def change(customer_id, body:, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
