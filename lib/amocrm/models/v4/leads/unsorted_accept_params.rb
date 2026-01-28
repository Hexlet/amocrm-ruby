# frozen_string_literal: true

module Amocrm
  module Models
    module V4
      module Leads
        # @see Amocrm::Resources::V4::Leads::Unsorted#accept
        class UnsortedAcceptParams < Amocrm::Internal::Type::BaseModel
          extend Amocrm::Internal::Type::RequestParameters::Converter
          include Amocrm::Internal::Type::RequestParameters

          # @!attribute status_id
          #   Status id for the created lead
          #
          #   @return [Integer, nil]
          optional :status_id, Integer

          # @!attribute user_id
          #   User id on whose behalf the item is accepted
          #
          #   @return [Integer, nil]
          optional :user_id, Integer

          # @!method initialize(status_id: nil, user_id: nil, request_options: {})
          #   @param status_id [Integer] Status id for the created lead
          #
          #   @param user_id [Integer] User id on whose behalf the item is accepted
          #
          #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
