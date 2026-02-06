# typed: strong

module Amocrm
  module Models
    class V4LeadsListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4LeadsListParams, Amocrm::Internal::AnyHash)
        end

      # Filtering parameters, see filters API
      sig { returns(T.nilable(T.anything)) }
      attr_reader :filter

      sig { params(filter: T.anything).void }
      attr_writer :filter

      # Pagination limit
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Sorting, e.g. order[updated_at]=asc
      sig { returns(T.nilable(T.anything)) }
      attr_reader :order

      sig { params(order: T.anything).void }
      attr_writer :order

      # Pagination page
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Search by query string or id
      sig { returns(T.nilable(Amocrm::V4LeadsListParams::Query::Variants)) }
      attr_reader :query

      sig { params(query: Amocrm::V4LeadsListParams::Query::Variants).void }
      attr_writer :query

      # Expand related entities; comma-separated values
      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::V4LeadsListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filtering parameters, see filters API
        filter: nil,
        # Pagination limit
        limit: nil,
        # Sorting, e.g. order[updated_at]=asc
        order: nil,
        # Pagination page
        page: nil,
        # Search by query string or id
        query: nil,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: T.anything,
            limit: Integer,
            order: T.anything,
            page: Integer,
            query: Amocrm::V4LeadsListParams::Query::Variants,
            with: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Search by query string or id
      module Query
        extend Amocrm::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Integer) }

        sig do
          override.returns(T::Array[Amocrm::V4LeadsListParams::Query::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
