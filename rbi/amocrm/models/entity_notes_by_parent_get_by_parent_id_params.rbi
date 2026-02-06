# typed: strong

module Amocrm
  module Models
    class EntityNotesByParentGetByParentIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::EntityNotesByParentGetByParentIDParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(
          Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::OrSymbol
        )
      end
      attr_accessor :entity_type

      sig { returns(Integer) }
      attr_accessor :entity_id

      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          entity_type:
            Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::OrSymbol,
          entity_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, entity_id:, with: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::OrSymbol,
            entity_id: Integer,
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
            T.all(
              Symbol,
              Amocrm::EntityNotesByParentGetByParentIDParams::EntityType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
