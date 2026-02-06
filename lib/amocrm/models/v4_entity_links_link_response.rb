# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#entity_links_link
    module V4EntityLinksLinkResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4EntityLinksLinkResponse::EmptyResponse }

      variant -> { Amocrm::Models::V4EntityLinksLinkResponse::Problem }

      class EmptyResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Object, nil]
        optional :_embedded, Amocrm::Internal::Type::Unknown

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Object]
        #   @param _links [Object]
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
      #   @return [Array(Amocrm::Models::V4EntityLinksLinkResponse::EmptyResponse, Amocrm::Models::V4EntityLinksLinkResponse::Problem)]
    end
  end
end
