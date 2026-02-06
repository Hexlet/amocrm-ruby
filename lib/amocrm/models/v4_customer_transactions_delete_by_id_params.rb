# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#customer_transactions_delete_by_id
    class V4CustomerTransactionsDeleteByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [Integer]
      required :customer_id, Integer

      # @!method initialize(customer_id:, request_options: {})
      #   @param customer_id [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
