# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#tags_list
    class V4TagsListParams < Amocrm::Internal::Type::BaseModel
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
      #   @return [String, nil]
      optional :query, String

      # @!method initialize(filter: nil, limit: nil, page: nil, query: nil, request_options: {})
      #   @param filter [Object]
      #   @param limit [Integer]
      #   @param page [Integer]
      #   @param query [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      module EntityType
        extend Amocrm::Internal::Type::Enum

        LEADS = :leads
        CONTACTS = :contacts
        COMPANIES = :companies
        CUSTOMERS = :customers

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
