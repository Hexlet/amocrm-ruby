# typed: strong

module Amocrm
  module Models
    class EntityNotesByParentCreateByParentParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::EntityNotesByParentCreateByParentParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(
          Amocrm::EntityNotesByParentCreateByParentParams::EntityType::OrSymbol
        )
      end
      attr_accessor :entity_type

      sig do
        returns(T::Array[Amocrm::EntityNotesByParentCreateByParentParams::Body])
      end
      attr_accessor :body

      sig do
        params(
          entity_type:
            Amocrm::EntityNotesByParentCreateByParentParams::EntityType::OrSymbol,
          body:
            T::Array[
              Amocrm::EntityNotesByParentCreateByParentParams::Body::OrHash
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
              Amocrm::EntityNotesByParentCreateByParentParams::EntityType::OrSymbol,
            body:
              T::Array[Amocrm::EntityNotesByParentCreateByParentParams::Body],
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
              Amocrm::EntityNotesByParentCreateByParentParams::EntityType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::EntityNotesByParentCreateByParentParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::EntityNotesByParentCreateByParentParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::EntityNotesByParentCreateByParentParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::EntityNotesByParentCreateByParentParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::EntityNotesByParentCreateByParentParams::EntityType::TaggedSymbol
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
              Amocrm::EntityNotesByParentCreateByParentParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :note_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by

        sig { params(created_by: Integer).void }
        attr_writer :created_by

        sig { returns(T.nilable(Integer)) }
        attr_reader :entity_id

        sig { params(entity_id: Integer).void }
        attr_writer :entity_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_need_to_trigger_digital_pipeline

        sig { params(is_need_to_trigger_digital_pipeline: T::Boolean).void }
        attr_writer :is_need_to_trigger_digital_pipeline

        sig { returns(T.nilable(T.anything)) }
        attr_reader :params

        sig { params(params: T.anything).void }
        attr_writer :params

        # Client-side request id
        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :responsible_user_id

        sig { params(responsible_user_id: Integer).void }
        attr_writer :responsible_user_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by

        sig { params(updated_by: Integer).void }
        attr_writer :updated_by

        sig do
          params(
            note_type: String,
            created_at: Integer,
            created_by: Integer,
            entity_id: Integer,
            is_need_to_trigger_digital_pipeline: T::Boolean,
            params: T.anything,
            request_id: String,
            responsible_user_id: Integer,
            updated_by: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          note_type:,
          created_at: nil,
          created_by: nil,
          entity_id: nil,
          is_need_to_trigger_digital_pipeline: nil,
          params: nil,
          # Client-side request id
          request_id: nil,
          responsible_user_id: nil,
          updated_by: nil
        )
        end

        sig do
          override.returns(
            {
              note_type: String,
              created_at: Integer,
              created_by: Integer,
              entity_id: Integer,
              is_need_to_trigger_digital_pipeline: T::Boolean,
              params: T.anything,
              request_id: String,
              responsible_user_id: Integer,
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
