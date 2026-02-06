# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#tags_create
    module V4TagsCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4TagsCreateResponse::TagCreateResponse }

      variant -> { Amocrm::Models::V4TagsCreateResponse::Problem }

      class TagCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::V4TagsCreateResponse::TagCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute tags
          #
          #   @return [Array<Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::Tag>, nil]
          optional :tags,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::Tag] }

          # @!method initialize(tags: nil)
          #   @param tags [Array<Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::Tag>]

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
      #   @return [Array(Amocrm::Models::V4TagsCreateResponse::TagCreateResponse, Amocrm::Models::V4TagsCreateResponse::Problem)]
    end
  end
end
