# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#webhooks_subscribe
    class APIWebhooksSubscribeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute destination
      #
      #   @return [String]
      required :destination, String

      # @!attribute settings
      #
      #   @return [Array<String>]
      required :settings, Amocrm::Internal::Type::ArrayOf[String]

      # @!attribute sort
      #
      #   @return [Integer, nil]
      optional :sort, Integer

      # @!method initialize(destination:, settings:, sort: nil, request_options: {})
      #   @param destination [String]
      #   @param settings [Array<String>]
      #   @param sort [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
