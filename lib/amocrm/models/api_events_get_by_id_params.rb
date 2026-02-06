# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#events_get_by_id
    class APIEventsGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute with
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(with: nil, request_options: {})
      #   @param with [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
