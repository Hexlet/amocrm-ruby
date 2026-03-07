# typed: strong

module Amocrm
  module Models
    class TagListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Amocrm::TagListParams, Amocrm::Internal::AnyHash) }

      sig { returns(Amocrm::TagListParams::EntityType::OrSymbol) }
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

      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      sig do
        params(
          entity_type: Amocrm::TagListParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          query: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        entity_type:,
        filter: nil,
        limit: nil,
        page: nil,
        query: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            entity_type: Amocrm::TagListParams::EntityType::OrSymbol,
            filter: T.anything,
            limit: Integer,
            page: Integer,
            query: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      module EntityType
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Amocrm::TagListParams::EntityType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS = T.let(:leads, Amocrm::TagListParams::EntityType::TaggedSymbol)
        CONTACTS =
          T.let(:contacts, Amocrm::TagListParams::EntityType::TaggedSymbol)
        COMPANIES =
          T.let(:companies, Amocrm::TagListParams::EntityType::TaggedSymbol)
        CUSTOMERS =
          T.let(:customers, Amocrm::TagListParams::EntityType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Amocrm::TagListParams::EntityType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
