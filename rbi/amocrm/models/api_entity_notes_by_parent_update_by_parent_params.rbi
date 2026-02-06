# typed: strong

module Amocrm
  module Models
    class APIEntityNotesByParentUpdateByParentParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::APIEntityNotesByParentUpdateByParentParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(
          Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::OrSymbol
        )
      end
      attr_accessor :entity_type

      sig do
        returns(
          T::Array[Amocrm::APIEntityNotesByParentUpdateByParentParams::Body]
        )
      end
      attr_accessor :body

      sig do
        params(
          entity_type:
            Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::OrSymbol,
          body:
            T::Array[
              Amocrm::APIEntityNotesByParentUpdateByParentParams::Body::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, body:, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::OrSymbol,
            body:
              T::Array[
                Amocrm::APIEntityNotesByParentUpdateByParentParams::Body
              ],
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
              Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::TaggedSymbol
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
              Amocrm::APIEntityNotesByParentUpdateByParentParams::Body,
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
