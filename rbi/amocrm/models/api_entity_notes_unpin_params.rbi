# typed: strong

module Amocrm
  module Models
    class APIEntityNotesUnpinParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIEntityNotesUnpinParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Amocrm::APIEntityNotesUnpinParams::EntityType::OrSymbol) }
      attr_accessor :entity_type

      sig do
        params(
          entity_type: Amocrm::APIEntityNotesUnpinParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::APIEntityNotesUnpinParams::EntityType::OrSymbol,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      module EntityType
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Amocrm::APIEntityNotesUnpinParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::APIEntityNotesUnpinParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::APIEntityNotesUnpinParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::APIEntityNotesUnpinParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::APIEntityNotesUnpinParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::APIEntityNotesUnpinParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
