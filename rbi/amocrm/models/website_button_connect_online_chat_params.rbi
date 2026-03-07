# typed: strong

module Amocrm
  module Models
    class WebsiteButtonConnectOnlineChatParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::WebsiteButtonConnectOnlineChatParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :source_id

      sig do
        params(
          source_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(source_id:, request_options: {})
      end

      sig do
        override.returns(
          { source_id: Integer, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
