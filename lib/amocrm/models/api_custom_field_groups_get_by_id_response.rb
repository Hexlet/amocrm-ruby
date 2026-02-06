# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#custom_field_groups_get_by_id
    module APICustomFieldGroupsGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICustomFieldGroupsGetByIDResponse::CustomFieldGroup }

      variant -> { Amocrm::Models::APICustomFieldGroupsGetByIDResponse::Problem }

      class CustomFieldGroup < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array(Amocrm::Models::APICustomFieldGroupsGetByIDResponse::CustomFieldGroup, Amocrm::Models::APICustomFieldGroupsGetByIDResponse::Problem)]
    end
  end
end
