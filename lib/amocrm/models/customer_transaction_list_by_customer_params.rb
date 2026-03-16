# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CustomerTransactions#list_by_customer
    class CustomerTransactionListByCustomerParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [Integer]
      required :customer_id, Integer

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

      # @!method initialize(customer_id:, filter: nil, limit: nil, page: nil, request_options: {})
      #   @param customer_id [Integer]
      #   @param filter [Object]
      #   @param limit [Integer]
      #   @param page [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
