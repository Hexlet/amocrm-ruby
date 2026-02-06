# typed: strong

module Amocrm
  module Models
    class V4EntityNotesByParentGetByParentIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4EntityNotesByParentGetByParentIDParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(
          Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::OrSymbol
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
            Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::OrSymbol,
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
              Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::OrSymbol,
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
              Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
