# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#events_list
    module APIEventsListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIEventsListResponse::EventListResponse }

      variant -> { Amocrm::Models::APIEventsListResponse::Problem }

      class EventListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::APIEventsListResponse::EventListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute events
          #
          #   @return [Array<Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::Event>, nil]
          optional :events,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::Event] }

          # @!method initialize(events: nil)
          #   @param events [Array<Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::Event>]

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
      #   @return [Array(Amocrm::Models::APIEventsListResponse::EventListResponse, Amocrm::Models::APIEventsListResponse::Problem)]
    end
  end
end
