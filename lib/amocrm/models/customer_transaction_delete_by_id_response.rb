# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CustomerTransactions#delete_by_id
    module CustomerTransactionDeleteByIDResponse
      extend Amocrm::Internal::Type::Union

      variant Amocrm::Internal::Type::Unknown

      variant -> { Amocrm::Models::CustomerTransactionDeleteByIDResponse::Problem }

      class Problem < Amocrm::Internal::Type::BaseModel
        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(detail: nil, status: nil, title: nil, type: nil)
        #   @param detail [String]
        #   @param status [Integer]
        #   @param title [String]
        #   @param type [String]
      end

      # @!method self.variants
      #   @return [Array(Object, Amocrm::Models::CustomerTransactionDeleteByIDResponse::Problem)]
    end
  end
end
