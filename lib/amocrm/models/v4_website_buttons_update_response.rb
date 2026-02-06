# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#website_buttons_update
    module V4WebsiteButtonsUpdateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4WebsiteButtonsUpdateResponse::WebsiteButton }

      variant -> { Amocrm::Models::V4WebsiteButtonsUpdateResponse::Problem }

      class WebsiteButton < Amocrm::Internal::Type::BaseModel
        # @!attribute account_id
        #
        #   @return [Integer, nil]
        optional :account_id, Integer

        # @!attribute button_id
        #
        #   @return [Integer, nil]
        optional :button_id, Integer

        # @!attribute creation_status
        #
        #   @return [String, nil]
        optional :creation_status, String

        # @!attribute is_duplication_control_enabled
        #
        #   @return [Boolean, nil]
        optional :is_duplication_control_enabled, Amocrm::Internal::Type::Boolean

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute pipeline_id
        #
        #   @return [Integer, nil]
        optional :pipeline_id, Integer, nil?: true

        # @!attribute script
        #
        #   @return [String, nil]
        optional :script, String, nil?: true

        # @!attribute source_id
        #
        #   @return [Integer, nil]
        optional :source_id, Integer

        # @!method initialize(account_id: nil, button_id: nil, creation_status: nil, is_duplication_control_enabled: nil, name: nil, pipeline_id: nil, script: nil, source_id: nil)
        #   @param account_id [Integer]
        #   @param button_id [Integer]
        #   @param creation_status [String]
        #   @param is_duplication_control_enabled [Boolean]
        #   @param name [String]
        #   @param pipeline_id [Integer, nil]
        #   @param script [String, nil]
        #   @param source_id [Integer]
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
      #   @return [Array(Amocrm::Models::V4WebsiteButtonsUpdateResponse::WebsiteButton, Amocrm::Models::V4WebsiteButtonsUpdateResponse::Problem)]
    end
  end
end
