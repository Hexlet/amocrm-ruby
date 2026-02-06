# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#custom_field_groups_list
    module APICustomFieldGroupsListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse }

      variant -> { Amocrm::Models::APICustomFieldGroupsListResponse::Problem }

      class CustomFieldGroupListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute groups
          #
          #   @return [Array<Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::Group>, nil]
          optional :groups,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::Group] }

          # @!method initialize(groups: nil)
          #   @param groups [Array<Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::Group>]

          class Group < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute is_predefined
            #
            #   @return [Boolean, nil]
            optional :is_predefined, Amocrm::Internal::Type::Boolean

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute sort
            #
            #   @return [Integer, nil]
            optional :sort, Integer

            # @!method initialize(id: nil, is_predefined: nil, name: nil, sort: nil)
            #   @param id [Integer]
            #   @param is_predefined [Boolean]
            #   @param name [String]
            #   @param sort [Integer]
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
      #   @return [Array(Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse, Amocrm::Models::APICustomFieldGroupsListResponse::Problem)]
    end
  end
end
