# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CustomerBonusPoints#change
    class CustomerBonusPointChangeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [Integer]
      required :customer_id, Integer

      # @!attribute body
      #
      #   @return [Amocrm::Models::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn, Amocrm::Models::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem]
      required :body, union: -> { Amocrm::CustomerBonusPointChangeParams::Body }

      # @!method initialize(customer_id:, body:, request_options: {})
      #   @param customer_id [Integer]
      #   @param body [Amocrm::Models::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn, Amocrm::Models::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      module Body
        extend Amocrm::Internal::Type::Union

        variant -> { Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn }

        variant -> { Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem }

        class CustomerBonusPointsEarn < Amocrm::Internal::Type::BaseModel
          # @!attribute earn
          #
          #   @return [Integer]
          required :earn, Integer

          # @!method initialize(earn:)
          #   @param earn [Integer]
        end

        class CustomerBonusPointsRedeem < Amocrm::Internal::Type::BaseModel
          # @!attribute redeem
          #
          #   @return [Integer]
          required :redeem, Integer

          # @!method initialize(redeem:)
          #   @param redeem [Integer]
        end

        # @!method self.variants
        #   @return [Array(Amocrm::Models::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn, Amocrm::Models::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem)]
      end
    end
  end
end
