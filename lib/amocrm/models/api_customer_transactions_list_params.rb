# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_transactions_list
    class APICustomerTransactionsListParams < Amocrm::Internal::Type::BaseModel
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

      # @!method initialize(filter: nil, limit: nil, page: nil, request_options: {})
      #   @param filter [Object]
      #   @param limit [Integer]
      #   @param page [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
