# typed: strong

module Amocrm
  module Models
    class EntityNotesByParentListByParentParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::EntityNotesByParentListByParentParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(
          Amocrm::EntityNotesByParentListByParentParams::EntityType::OrSymbol
        )
      end
      attr_accessor :entity_type

      sig { returns(T.nilable(T.anything)) }
      attr_reader :filter

      sig { params(filter: T.anything).void }
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      sig do
        params(
          entity_type:
            Amocrm::EntityNotesByParentListByParentParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        entity_type:,
        filter: nil,
        limit: nil,
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::EntityNotesByParentListByParentParams::EntityType::OrSymbol,
            filter: T.anything,
            limit: Integer,
            page: Integer,
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
              Amocrm::EntityNotesByParentListByParentParams::EntityType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::EntityNotesByParentListByParentParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::EntityNotesByParentListByParentParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::EntityNotesByParentListByParentParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::EntityNotesByParentListByParentParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::EntityNotesByParentListByParentParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
