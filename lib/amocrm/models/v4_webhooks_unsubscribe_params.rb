# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#webhooks_unsubscribe
    class V4WebhooksUnsubscribeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute destination
      #
      #   @return [String]
      required :destination, String

      # @!method initialize(destination:, request_options: {})
      #   @param destination [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
