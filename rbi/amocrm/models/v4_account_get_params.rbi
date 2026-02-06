# typed: strong

module Amocrm
  module Models
    class V4AccountGetParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4AccountGetParams, Amocrm::Internal::AnyHash)
        end

      # Additional data to include (comma-separated).
      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Additional data to include (comma-separated).
        with: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { with: String, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
