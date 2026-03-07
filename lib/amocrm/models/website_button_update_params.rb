# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::WebsiteButtons#update
    class WebsiteButtonUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute source_id
      #
      #   @return [Integer]
      required :source_id, Integer

      # @!attribute trusted_websites
      #
      #   @return [Amocrm::Models::WebsiteButtonUpdateParams::TrustedWebsites]
      required :trusted_websites, -> { Amocrm::WebsiteButtonUpdateParams::TrustedWebsites }

      # @!method initialize(source_id:, trusted_websites:, request_options: {})
      #   @param source_id [Integer]
      #   @param trusted_websites [Amocrm::Models::WebsiteButtonUpdateParams::TrustedWebsites]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class TrustedWebsites < Amocrm::Internal::Type::BaseModel
        # @!attribute add
        #
        #   @return [Array<String>]
        required :add, Amocrm::Internal::Type::ArrayOf[String]

        # @!method initialize(add:)
        #   @param add [Array<String>]
      end
    end
  end
end
