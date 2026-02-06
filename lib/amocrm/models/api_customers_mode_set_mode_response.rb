# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customers_mode_set_mode
    module APICustomersModeSetModeResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse }

      variant -> { Amocrm::Models::APICustomersModeSetModeResponse::Problem }

      class CustomerModeResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute is_enabled
        #
        #   @return [Boolean, nil]
        optional :is_enabled, Amocrm::Internal::Type::Boolean

        # @!attribute mode
        #
        #   @return [Symbol, Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode, nil]
        optional :mode, enum: -> { Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode }

        # @!method initialize(is_enabled: nil, mode: nil)
        #   @param is_enabled [Boolean]
        #   @param mode [Symbol, Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode]

        # @see Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse#mode
        module Mode
          extend Amocrm::Internal::Type::Enum

          SEGMENTS = :segments
          PERIODICITY = :periodicity

          # @!method self.values
          #   @return [Array<Symbol>]
        end
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
      #   @return [Array(Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse, Amocrm::Models::APICustomersModeSetModeResponse::Problem)]
    end
  end
end
