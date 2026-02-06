# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#tags_list
    module APITagsListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APITagsListResponse::TagListResponse }

      variant -> { Amocrm::Models::APITagsListResponse::Problem }

      class TagListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APITagsListResponse::TagListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APITagsListResponse::TagListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::APITagsListResponse::TagListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::APITagsListResponse::TagListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute tags
          #
          #   @return [Array<Amocrm::Models::APITagsListResponse::TagListResponse::Embedded::Tag>, nil]
          optional :tags,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APITagsListResponse::TagListResponse::Embedded::Tag] }

          # @!method initialize(tags: nil)
          #   @param tags [Array<Amocrm::Models::APITagsListResponse::TagListResponse::Embedded::Tag>]

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

            # @!method initialize(id: nil, color: nil, name: nil)
            #   @param id [Integer]
            #   @param color [String]
            #   @param name [String]
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
      #   @return [Array(Amocrm::Models::APITagsListResponse::TagListResponse, Amocrm::Models::APITagsListResponse::Problem)]
    end
  end
end
