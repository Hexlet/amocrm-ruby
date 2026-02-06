# typed: strong

module Amocrm
  module Resources
    class Calls
      # Add calls (batch).
      sig do
        params(
          body: T::Array[Amocrm::CallCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CallCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
