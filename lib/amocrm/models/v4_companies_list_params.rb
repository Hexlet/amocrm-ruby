# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#companies_list
    class V4CompaniesListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute filter
      #   Filtering parameters
      #
      #   @return [Object, nil]
      optional :filter, Amocrm::Internal::Type::Unknown

      # @!attribute limit
      #   Pagination limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute order
      #   Sorting, e.g. order[updated_at]=asc
      #
      #   @return [Object, nil]
      optional :order, Amocrm::Internal::Type::Unknown

      # @!attribute page
      #   Pagination page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute query
      #   Search by query string or id
      #
      #   @return [String, Integer, nil]
      optional :query, union: -> { Amocrm::V4CompaniesListParams::Query }

      # @!attribute with
      #   Expand related entities; comma-separated values
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #   @param filter [Object] Filtering parameters
      #
      #   @param limit [Integer] Pagination limit
      #
      #   @param order [Object] Sorting, e.g. order[updated_at]=asc
      #
      #   @param page [Integer] Pagination page
      #
      #   @param query [String, Integer] Search by query string or id
      #
      #   @param with [String] Expand related entities; comma-separated values
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      # Search by query string or id
      module Query
        extend Amocrm::Internal::Type::Union

        variant String

        variant Integer

        # @!method self.variants
        #   @return [Array(String, Integer)]
      end
    end
  end
end
