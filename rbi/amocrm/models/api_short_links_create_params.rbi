# typed: strong

module Amocrm
  module Models
    class APIShortLinksCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIShortLinksCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          url: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(url:, request_options: {})
      end

      sig do
        override.returns(
          { url: String, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
