# typed: strong

module Amocrm
  module Models
    class CatalogGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CatalogGetByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :id

      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, request_options: {})
      end

      sig do
        override.returns(
          { id: Integer, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
