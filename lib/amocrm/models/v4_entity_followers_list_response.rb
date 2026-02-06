# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#entity_followers_list
    module V4EntityFollowersListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse }

      variant -> { Amocrm::Models::V4EntityFollowersListResponse::Problem }

      class EntityFollowerListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!attribute _total_items
        #
        #   @return [Integer, nil]
        optional :_total_items, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil, _total_items: nil)
        #   @param _embedded [Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]
        #   @param _total_items [Integer]

        # @see Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute followers
          #
          #   @return [Array<Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::Follower>, nil]
          optional :followers,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::Follower] }

          # @!method initialize(followers: nil)
          #   @param followers [Array<Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::Follower>]

          class Follower < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute created_at
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute created_by
            #
            #   @return [Integer, nil]
            optional :created_by, Integer

            # @!attribute user_id
            #
            #   @return [Integer, nil]
            optional :user_id, Integer

            # @!method initialize(id: nil, created_at: nil, created_by: nil, user_id: nil)
            #   @param id [Integer]
            #   @param created_at [Integer]
            #   @param created_by [Integer]
            #   @param user_id [Integer]
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
      #   @return [Array(Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse, Amocrm::Models::V4EntityFollowersListResponse::Problem)]
    end
  end
end
