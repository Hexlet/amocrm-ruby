# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#website_buttons_update
    class V4WebsiteButtonsUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute trusted_websites
      #
      #   @return [Amocrm::Models::V4WebsiteButtonsUpdateParams::TrustedWebsites]
      required :trusted_websites, -> { Amocrm::V4WebsiteButtonsUpdateParams::TrustedWebsites }

      # @!method initialize(trusted_websites:, request_options: {})
      #   @param trusted_websites [Amocrm::Models::V4WebsiteButtonsUpdateParams::TrustedWebsites]
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
