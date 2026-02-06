# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityFollowers#add
    module EntityFollowerAddResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse }

      variant -> { Amocrm::Models::EntityFollowerAddResponse::Problem }

      class EntityFollowerCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _total_items
        #
        #   @return [Integer, nil]
        optional :_total_items, Integer

        # @!method initialize(_embedded: nil, _links: nil, _total_items: nil)
        #   @param _embedded [Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse::Embedded]
        #   @param _links [Object]
        #   @param _total_items [Integer]

        # @see Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute followers
          #
          #   @return [Array<Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse::Embedded::Follower>, nil]
          optional :followers,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse::Embedded::Follower] }

          # @!method initialize(followers: nil)
          #   @param followers [Array<Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse::Embedded::Follower>]

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
      #   @return [Array(Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse, Amocrm::Models::EntityFollowerAddResponse::Problem)]
    end
  end
end
