# typed: strong

module Amocrm
  module Models
    class V4EntityNotesUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4EntityNotesUpdateByIDParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(Amocrm::V4EntityNotesUpdateByIDParams::EntityType::OrSymbol)
      end
      attr_accessor :entity_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :entity_id

      sig { params(entity_id: Integer).void }
      attr_writer :entity_id

      sig { returns(T.nilable(String)) }
      attr_reader :note_type

      sig { params(note_type: String).void }
      attr_writer :note_type

      sig { returns(T.nilable(T.anything)) }
      attr_reader :params

      sig { params(params: T.anything).void }
      attr_writer :params

      sig { returns(T.nilable(Integer)) }
      attr_reader :updated_at

      sig { params(updated_at: Integer).void }
      attr_writer :updated_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :updated_by

      sig { params(updated_by: Integer).void }
      attr_writer :updated_by

      sig do
        params(
          entity_type:
            Amocrm::V4EntityNotesUpdateByIDParams::EntityType::OrSymbol,
          entity_id: Integer,
          note_type: String,
          params: T.anything,
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        entity_type:,
        entity_id: nil,
        note_type: nil,
        params: nil,
        updated_at: nil,
        updated_by: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::V4EntityNotesUpdateByIDParams::EntityType::OrSymbol,
            entity_id: Integer,
            note_type: String,
            params: T.anything,
            updated_at: Integer,
            updated_by: Integer,
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
            T.all(Symbol, Amocrm::V4EntityNotesUpdateByIDParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::V4EntityNotesUpdateByIDParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::V4EntityNotesUpdateByIDParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::V4EntityNotesUpdateByIDParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::V4EntityNotesUpdateByIDParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::V4EntityNotesUpdateByIDParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
