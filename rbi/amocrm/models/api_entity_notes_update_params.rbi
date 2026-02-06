# typed: strong

module Amocrm
  module Models
    class APIEntityNotesUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIEntityNotesUpdateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::APIEntityNotesUpdateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::APIEntityNotesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::APIEntityNotesUpdateParams::Body],
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
            T.all(Symbol, Amocrm::APIEntityNotesUpdateParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::APIEntityNotesUpdateParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::APIEntityNotesUpdateParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::APIEntityNotesUpdateParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::APIEntityNotesUpdateParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::APIEntityNotesUpdateParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::APIEntityNotesUpdateParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        # Note id
        sig { returns(Integer) }
        attr_accessor :id

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
            id: Integer,
            entity_id: Integer,
            note_type: String,
            params: T.anything,
            updated_at: Integer,
            updated_by: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Note id
          id:,
          entity_id: nil,
          note_type: nil,
          params: nil,
          updated_at: nil,
          updated_by: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              entity_id: Integer,
              note_type: String,
              params: T.anything,
              updated_at: Integer,
              updated_by: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
