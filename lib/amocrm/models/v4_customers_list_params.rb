# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#customers_list
    class V4CustomersListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute filter
      #
      #   @return [Object, nil]
      optional :filter, Amocrm::Internal::Type::Unknown

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute order
      #
      #   @return [Object, nil]
      optional :order, Amocrm::Internal::Type::Unknown

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute query
      #
      #   @return [String, Integer, nil]
      optional :query, union: -> { Amocrm::V4CustomersListParams::Query }

      # @!attribute with
      #   Expand related entities; comma-separated values
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #   @param filter [Object]
      #
      #   @param limit [Integer]
      #
      #   @param order [Object]
      #
      #   @param page [Integer]
      #
      #   @param query [String, Integer]
      #
      #   @param with [String] Expand related entities; comma-separated values
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

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
