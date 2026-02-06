# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#website_buttons_create
    class V4WebsiteButtonsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute pipeline_id
      #
      #   @return [Integer]
      required :pipeline_id, Integer

      # @!attribute is_used_in_app
      #
      #   @return [Boolean, nil]
      optional :is_used_in_app, Amocrm::Internal::Type::Boolean

      # @!attribute trusted_websites
      #
      #   @return [Array<String>, nil]
      optional :trusted_websites, Amocrm::Internal::Type::ArrayOf[String]

      # @!method initialize(pipeline_id:, is_used_in_app: nil, trusted_websites: nil, request_options: {})
      #   @param pipeline_id [Integer]
      #   @param is_used_in_app [Boolean]
      #   @param trusted_websites [Array<String>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
