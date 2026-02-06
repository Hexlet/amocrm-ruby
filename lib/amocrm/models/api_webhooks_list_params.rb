# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#webhooks_list
    class APIWebhooksListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute filter
      #
      #   @return [Amocrm::Models::APIWebhooksListParams::Filter, nil]
      optional :filter, -> { Amocrm::APIWebhooksListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   @param filter [Amocrm::Models::APIWebhooksListParams::Filter]
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
