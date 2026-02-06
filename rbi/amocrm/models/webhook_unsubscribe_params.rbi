# typed: strong

module Amocrm
  module Models
    class WebhookUnsubscribeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::WebhookUnsubscribeParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :destination

      sig do
        params(
          destination: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(destination:, request_options: {})
      end

      sig do
        override.returns(
          { destination: String, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
