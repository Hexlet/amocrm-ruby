# typed: strong

module Amocrm
  module Models
    class CustomFieldGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CustomFieldGetByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :entity_type

      sig do
        params(
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, request_options: {})
      end

      sig do
        override.returns(
          { entity_type: String, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
