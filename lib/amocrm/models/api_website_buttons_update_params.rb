# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#website_buttons_update
    class APIWebsiteButtonsUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute trusted_websites
      #
      #   @return [Amocrm::Models::APIWebsiteButtonsUpdateParams::TrustedWebsites]
      required :trusted_websites, -> { Amocrm::APIWebsiteButtonsUpdateParams::TrustedWebsites }

      # @!method initialize(trusted_websites:, request_options: {})
      #   @param trusted_websites [Amocrm::Models::APIWebsiteButtonsUpdateParams::TrustedWebsites]
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
