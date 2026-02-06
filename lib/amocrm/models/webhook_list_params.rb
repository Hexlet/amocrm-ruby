# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Webhooks#list
    class WebhookListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute filter
      #
      #   @return [Amocrm::Models::WebhookListParams::Filter, nil]
      optional :filter, -> { Amocrm::WebhookListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   @param filter [Amocrm::Models::WebhookListParams::Filter]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Amocrm::Internal::Type::BaseModel
        # @!attribute destination
        #
        #   @return [String, nil]
        optional :destination, String

        # @!method initialize(destination: nil)
        #   @param destination [String]
      end
    end
  end
end
