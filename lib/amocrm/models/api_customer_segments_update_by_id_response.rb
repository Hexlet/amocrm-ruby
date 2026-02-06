# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_segments_update_by_id
    module APICustomerSegmentsUpdateByIDResponse
      extend Amocrm::Internal::Type::Union

      variant Amocrm::Internal::Type::Unknown

      variant -> { Amocrm::Models::APICustomerSegmentsUpdateByIDResponse::Problem }

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
      #   @return [Array(Object, Amocrm::Models::APICustomerSegmentsUpdateByIDResponse::Problem)]
    end
  end
end
