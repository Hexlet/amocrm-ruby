# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#customer_bonus_points_change
    module V4CustomerBonusPointsChangeResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4CustomerBonusPointsChangeResponse::CustomerBonusPointsResponse }

      variant -> { Amocrm::Models::V4CustomerBonusPointsChangeResponse::Problem }

      class CustomerBonusPointsResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute bonus_points
        #
        #   @return [Integer, nil]
        optional :bonus_points, Integer

        # @!method initialize(bonus_points: nil)
        #   @param bonus_points [Integer]
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
      #   @return [Array(Amocrm::Models::V4CustomerBonusPointsChangeResponse::CustomerBonusPointsResponse, Amocrm::Models::V4CustomerBonusPointsChangeResponse::Problem)]
    end
  end
end
