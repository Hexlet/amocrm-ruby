# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#customer_statuses_get_by_id
    module V4CustomerStatusesGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4CustomerStatusesGetByIDResponse::CustomerStatus }

      variant -> { Amocrm::Models::V4CustomerStatusesGetByIDResponse::Problem }

      class CustomerStatus < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, color: nil, name: nil, sort: nil, type: nil)
        #   @param id [Integer]
        #   @param color [String]
        #   @param name [String]
        #   @param sort [Integer]
        #   @param type [String]
      end

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
      #   @return [Array(Amocrm::Models::V4CustomerStatusesGetByIDResponse::CustomerStatus, Amocrm::Models::V4CustomerStatusesGetByIDResponse::Problem)]
    end
  end
end
