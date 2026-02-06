# typed: strong

module Amocrm
  module Models
    class APIEntityNotesByParentListByParentParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::APIEntityNotesByParentListByParentParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(
          Amocrm::APIEntityNotesByParentListByParentParams::EntityType::OrSymbol
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
            Amocrm::APIEntityNotesByParentListByParentParams::EntityType::OrSymbol,
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
              Amocrm::APIEntityNotesByParentListByParentParams::EntityType::OrSymbol,
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
              Amocrm::APIEntityNotesByParentListByParentParams::EntityType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::APIEntityNotesByParentListByParentParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::APIEntityNotesByParentListByParentParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::APIEntityNotesByParentListByParentParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::APIEntityNotesByParentListByParentParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::APIEntityNotesByParentListByParentParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
