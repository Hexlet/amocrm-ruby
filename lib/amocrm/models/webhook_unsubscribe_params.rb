# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Webhooks#unsubscribe
    class WebhookUnsubscribeParams < Amocrm::Internal::Type::BaseModel
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
