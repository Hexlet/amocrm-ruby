# typed: strong

module Amocrm
  module Resources
    class V2
      # Run salesbot (batch, up to 100 tasks).
      sig do
        params(
          body: T::Array[Amocrm::V2SalesbotRunParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V2SalesbotRunResponse::Variants)
      end
      def salesbot_run(body:, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
