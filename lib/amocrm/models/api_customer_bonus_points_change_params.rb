# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_bonus_points_change
    class APICustomerBonusPointsChangeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute earn
      #
      #   @return [Integer]
      required :earn, Integer

      # @!attribute redeem
      #
      #   @return [Integer]
      required :redeem, Integer

      # @!method initialize(earn:, redeem:, request_options: {})
      #   @param earn [Integer]
      #   @param redeem [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
