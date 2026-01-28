# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Pet#find_by_status
    class PetFindByStatusParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute status
      #   Status values that need to be considered for filter
      #
      #   @return [Symbol, Amocrm::Models::PetFindByStatusParams::Status, nil]
      optional :status, enum: -> { Amocrm::PetFindByStatusParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, Amocrm::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      # Status values that need to be considered for filter
      module Status
        extend Amocrm::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
