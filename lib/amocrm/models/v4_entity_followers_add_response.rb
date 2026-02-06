# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#entity_followers_add
    module V4EntityFollowersAddResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse }

      variant -> { Amocrm::Models::V4EntityFollowersAddResponse::Problem }

      class EntityFollowerCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _total_items
        #
        #   @return [Integer, nil]
        optional :_total_items, Integer

        # @!method initialize(_embedded: nil, _links: nil, _total_items: nil)
        #   @param _embedded [Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse::Embedded]
        #   @param _links [Object]
        #   @param _total_items [Integer]

        # @see Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute followers
          #
          #   @return [Array<Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse::Embedded::Follower>, nil]
          optional :followers,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse::Embedded::Follower] }

          # @!method initialize(followers: nil)
          #   @param followers [Array<Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse::Embedded::Follower>]

          class Follower < Amocrm::Internal::Type::BaseModel
            # @!attribute user_id
            #
            #   @return [Integer, nil]
            optional :user_id, Integer

            # @!method initialize(user_id: nil)
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
      #   @return [Array(Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse, Amocrm::Models::V4EntityFollowersAddResponse::Problem)]
    end
  end
end
