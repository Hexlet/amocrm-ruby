# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#events_list_types
    module APIEventsListTypesResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse }

      variant -> { Amocrm::Models::APIEventsListTypesResponse::Problem }

      class EventTypesResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse::Embedded }

        # @!method initialize(_embedded: nil)
        #   @param _embedded [Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse::Embedded]

        # @see Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse#_embedded
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
      #   @return [Array(Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse, Amocrm::Models::APIEventsListTypesResponse::Problem)]
    end
  end
end
