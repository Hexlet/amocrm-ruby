# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#tags_create
    module APITagsCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APITagsCreateResponse::TagCreateResponse }

      variant -> { Amocrm::Models::APITagsCreateResponse::Problem }

      class TagCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APITagsCreateResponse::TagCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APITagsCreateResponse::TagCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APITagsCreateResponse::TagCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APITagsCreateResponse::TagCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute tags
          #
          #   @return [Array<Amocrm::Models::APITagsCreateResponse::TagCreateResponse::Embedded::Tag>, nil]
          optional :tags,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APITagsCreateResponse::TagCreateResponse::Embedded::Tag] }

          # @!method initialize(tags: nil)
          #   @param tags [Array<Amocrm::Models::APITagsCreateResponse::TagCreateResponse::Embedded::Tag>]

          class Tag < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute color
            #
            #   @return [String, nil]
            optional :color, String

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!method initialize(id: nil, color: nil, name: nil, request_id: nil)
            #   @param id [Integer]
            #   @param color [String]
            #   @param name [String]
            #   @param request_id [String]
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
      #   @return [Array(Amocrm::Models::APITagsCreateResponse::TagCreateResponse, Amocrm::Models::APITagsCreateResponse::Problem)]
    end
  end
end
