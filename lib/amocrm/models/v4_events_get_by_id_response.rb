# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#events_get_by_id
    module V4EventsGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4EventsGetByIDResponse::Event }

      variant -> { Amocrm::Models::V4EventsGetByIDResponse::Problem }

      class Event < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute entity_id
        #
        #   @return [Integer, nil]
        optional :entity_id, Integer

        # @!attribute entity_type
        #
        #   @return [String, nil]
        optional :entity_type, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute value_after
        #
        #   @return [Object, nil]
        optional :value_after, Amocrm::Internal::Type::Unknown

        # @!attribute value_before
        #
        #   @return [Object, nil]
        optional :value_before, Amocrm::Internal::Type::Unknown

        # @!method initialize(id: nil, _links: nil, created_at: nil, created_by: nil, entity_id: nil, entity_type: nil, type: nil, value_after: nil, value_before: nil)
        #   @param id [Integer]
        #   @param _links [Object]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param entity_id [Integer]
        #   @param entity_type [String]
        #   @param type [String]
        #   @param value_after [Object]
        #   @param value_before [Object]
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
      #   @return [Array(Amocrm::Models::V4EventsGetByIDResponse::Event, Amocrm::Models::V4EventsGetByIDResponse::Problem)]
    end
  end
end
