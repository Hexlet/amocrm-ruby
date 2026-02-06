# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::UnsortedLeads#decline
    class UnsortedLeadDeclineParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute user_id
      #   User id on whose behalf the item is declined
      #
      #   @return [Integer, nil]
      optional :user_id, Integer

      # @!method initialize(user_id: nil, request_options: {})
      #   @param user_id [Integer] User id on whose behalf the item is declined
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
