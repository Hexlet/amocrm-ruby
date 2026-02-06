# typed: strong

module Amocrm
  module Models
    class V4CatalogElementsListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4CatalogElementsListParams, Amocrm::Internal::AnyHash)
        end

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
        returns(T.nilable(Amocrm::V4CatalogElementsListParams::Query::Variants))
      end
      attr_reader :query

      sig do
        params(query: Amocrm::V4CatalogElementsListParams::Query::Variants).void
      end
      attr_writer :query

      sig do
        params(
          filter: T.anything,
          limit: Integer,
          page: Integer,
          query: Amocrm::V4CatalogElementsListParams::Query::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
            filter: T.anything,
            limit: Integer,
            page: Integer,
            query: Amocrm::V4CatalogElementsListParams::Query::Variants,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Query
        extend Amocrm::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Integer) }

        sig do
          override.returns(
            T::Array[Amocrm::V4CatalogElementsListParams::Query::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
