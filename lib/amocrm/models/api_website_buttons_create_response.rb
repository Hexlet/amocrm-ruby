# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#website_buttons_create
    module APIWebsiteButtonsCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIWebsiteButtonsCreateResponse::WebsiteButtonCreateResponse }

      variant -> { Amocrm::Models::APIWebsiteButtonsCreateResponse::Problem }

      class WebsiteButtonCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute source_id
        #
        #   @return [Integer, nil]
        optional :source_id, Integer

        # @!attribute trusted_websites
        #
        #   @return [Array<String>, nil]
        optional :trusted_websites, Amocrm::Internal::Type::ArrayOf[String]

        # @!method initialize(source_id: nil, trusted_websites: nil)
        #   @param source_id [Integer]
        #   @param trusted_websites [Array<String>]
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(detail: nil, status: nil, title: nil, type: nil)
        #   @param detail [String]
        #   @param status [Integer]
        #   @param title [String]
        #   @param type [String]
      end

      # @!method self.variants
      #   @return [Array(Amocrm::Models::APIWebsiteButtonsCreateResponse::WebsiteButtonCreateResponse, Amocrm::Models::APIWebsiteButtonsCreateResponse::Problem)]
    end
  end
end
