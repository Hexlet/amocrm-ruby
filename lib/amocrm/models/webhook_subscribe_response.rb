# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Webhooks#subscribe
    module WebhookSubscribeResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::WebhookSubscribeResponse::Webhook }

      variant -> { Amocrm::Models::WebhookSubscribeResponse::Problem }

      class Webhook < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute account_id
        #
        #   @return [Integer, nil]
        optional :account_id, Integer

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute destination
        #
        #   @return [String, nil]
        optional :destination, String

        # @!attribute disabled
        #
        #   @return [Boolean, nil]
        optional :disabled, Amocrm::Internal::Type::Boolean

        # @!attribute settings
        #
        #   @return [Array<String>, nil]
        optional :settings, Amocrm::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!method initialize(id: nil, account_id: nil, created_at: nil, created_by: nil, destination: nil, disabled: nil, settings: nil, sort: nil, updated_at: nil)
        #   @param id [Integer]
        #   @param account_id [Integer]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param destination [String]
        #   @param disabled [Boolean]
        #   @param settings [Array<String>]
        #   @param sort [Integer]
        #   @param updated_at [Integer]
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
      #   @return [Array(Amocrm::Models::WebhookSubscribeResponse::Webhook, Amocrm::Models::WebhookSubscribeResponse::Problem)]
    end
  end
end
