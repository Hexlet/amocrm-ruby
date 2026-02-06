# typed: strong

module Amocrm
  module Models
    class V4EntityNotesGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4EntityNotesGetByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Amocrm::V4EntityNotesGetByIDParams::EntityType::OrSymbol) }
      attr_accessor :entity_type

      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          entity_type: Amocrm::V4EntityNotesGetByIDParams::EntityType::OrSymbol,
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
              Amocrm::V4EntityNotesGetByIDParams::EntityType::OrSymbol,
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
            T.all(Symbol, Amocrm::V4EntityNotesGetByIDParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::V4EntityNotesGetByIDParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::V4EntityNotesGetByIDParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::V4EntityNotesGetByIDParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::V4EntityNotesGetByIDParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::V4EntityNotesGetByIDParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
