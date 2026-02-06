# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CustomerTransactions#delete_by_id
    class CustomerTransactionDeleteByIDParams < Amocrm::Internal::Type::BaseModel
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
