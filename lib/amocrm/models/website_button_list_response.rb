# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::WebsiteButtons#list
    module WebsiteButtonListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse }

      variant -> { Amocrm::Models::WebsiteButtonListResponse::Problem }

      class WebsiteButtonListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute website_buttons
          #
          #   @return [Array<Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse::Embedded::WebsiteButton>, nil]
          optional :website_buttons,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse::Embedded::WebsiteButton] }

          # @!method initialize(website_buttons: nil)
          #   @param website_buttons [Array<Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse::Embedded::WebsiteButton>]

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
      #   @return [Array(Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse, Amocrm::Models::WebsiteButtonListResponse::Problem)]
    end
  end
end
