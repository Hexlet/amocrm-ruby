# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CatalogElements#list
    class CatalogElementListParams < Amocrm::Internal::Type::BaseModel
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

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute query
      #
      #   @return [String, Integer, nil]
      optional :query, union: -> { Amocrm::CatalogElementListParams::Query }

      # @!method initialize(filter: nil, limit: nil, page: nil, query: nil, request_options: {})
      #   @param filter [Object]
      #   @param limit [Integer]
      #   @param page [Integer]
      #   @param query [String, Integer]
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
