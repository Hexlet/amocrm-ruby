# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#customers_mode_set_mode
    class V4CustomersModeSetModeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute is_enabled
      #
      #   @return [Boolean]
      required :is_enabled, Amocrm::Internal::Type::Boolean

      # @!attribute mode
      #
      #   @return [Symbol, Amocrm::Models::V4CustomersModeSetModeParams::Mode]
      required :mode, enum: -> { Amocrm::V4CustomersModeSetModeParams::Mode }

      # @!method initialize(is_enabled:, mode:, request_options: {})
      #   @param is_enabled [Boolean]
      #   @param mode [Symbol, Amocrm::Models::V4CustomersModeSetModeParams::Mode]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      module Mode
        extend Amocrm::Internal::Type::Enum

        SEGMENTS = :segments
        PERIODICITY = :periodicity

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
