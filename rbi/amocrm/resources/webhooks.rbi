# typed: strong

module Amocrm
  module Resources
    class Webhooks
      # Get webhooks list.
      sig do
        params(
          filter: Amocrm::WebhookListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WebhookListResponse::Variants)
      end
      def list(filter: nil, request_options: {})
      end

      # Subscribe to webhook events.
      sig do
        params(
          destination: String,
          settings: T::Array[String],
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WebhookSubscribeResponse::Variants)
      end
      def subscribe(destination:, settings:, sort: nil, request_options: {})
      end

      # Unsubscribe webhook by destination.
      sig do
        params(
          destination: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WebhookUnsubscribeResponse::Variants)
      end
      def unsubscribe(destination:, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
