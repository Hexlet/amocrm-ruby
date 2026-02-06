# typed: strong

module Amocrm
  module Models
    class CatalogElementGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CatalogElementGetByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :catalog_id

      # Additional data to include (comma-separated).
      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          catalog_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        catalog_id:,
        # Additional data to include (comma-separated).
        with: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            catalog_id: Integer,
            with: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
