# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#events_list_types
    module V4EventsListTypesResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4EventsListTypesResponse::EventTypesResponse }

      variant -> { Amocrm::Models::V4EventsListTypesResponse::Problem }

      class EventTypesResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4EventsListTypesResponse::EventTypesResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4EventsListTypesResponse::EventTypesResponse::Embedded }

        # @!method initialize(_embedded: nil)
        #   @param _embedded [Amocrm::Models::V4EventsListTypesResponse::EventTypesResponse::Embedded]

        # @see Amocrm::Models::V4EventsListTypesResponse::EventTypesResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute types
          #
          #   @return [Array<Object>, nil]
          optional :types, Amocrm::Internal::Type::ArrayOf[Amocrm::Internal::Type::Unknown]

          # @!method initialize(types: nil)
          #   @param types [Array<Object>]
        end
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
      #   @return [Array(Amocrm::Models::V4EventsListTypesResponse::EventTypesResponse, Amocrm::Models::V4EventsListTypesResponse::Problem)]
    end
  end
end
