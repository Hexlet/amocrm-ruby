# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::ShortLinks#create
    module ShortLinkCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::ShortLinkCreateResponse::ShortLinkCreateResponse }

      variant -> { Amocrm::Models::ShortLinkCreateResponse::Problem }

      class ShortLinkCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute short_link
        #
        #   @return [String, nil]
        optional :short_link, String

        # @!method initialize(short_link: nil)
        #   @param short_link [String]
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
      #   @return [Array(Amocrm::Models::ShortLinkCreateResponse::ShortLinkCreateResponse, Amocrm::Models::ShortLinkCreateResponse::Problem)]
    end
  end
end
