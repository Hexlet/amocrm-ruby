# typed: strong

module Amocrm
  module Models
    class APIEntityNotesGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIEntityNotesGetByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Amocrm::APIEntityNotesGetByIDParams::EntityType::OrSymbol) }
      attr_accessor :entity_type

      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          entity_type:
            Amocrm::APIEntityNotesGetByIDParams::EntityType::OrSymbol,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, with: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::APIEntityNotesGetByIDParams::EntityType::OrSymbol,
            with: String,
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
            T.all(Symbol, Amocrm::APIEntityNotesGetByIDParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::APIEntityNotesGetByIDParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::APIEntityNotesGetByIDParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::APIEntityNotesGetByIDParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::APIEntityNotesGetByIDParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::APIEntityNotesGetByIDParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
