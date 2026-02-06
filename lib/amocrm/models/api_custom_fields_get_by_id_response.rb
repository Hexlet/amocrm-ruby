# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#custom_fields_get_by_id
    module APICustomFieldsGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICustomFieldsGetByIDResponse::CustomField }

      variant -> { Amocrm::Models::APICustomFieldsGetByIDResponse::Problem }

      class CustomField < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute entity_type
        #
        #   @return [String, nil]
        optional :entity_type, String

        # @!attribute enums
        #
        #   @return [Array<Object>, nil]
        optional :enums, Amocrm::Internal::Type::ArrayOf[Amocrm::Internal::Type::Unknown]

        # @!attribute group_id
        #
        #   @return [Integer, nil]
        optional :group_id, Integer

        # @!attribute is_deletable
        #
        #   @return [Boolean, nil]
        optional :is_deletable, Amocrm::Internal::Type::Boolean

        # @!attribute is_multiple
        #
        #   @return [Boolean, nil]
        optional :is_multiple, Amocrm::Internal::Type::Boolean

        # @!attribute is_required
        #
        #   @return [Boolean, nil]
        optional :is_required, Amocrm::Internal::Type::Boolean

        # @!attribute is_visible
        #
        #   @return [Boolean, nil]
        optional :is_visible, Amocrm::Internal::Type::Boolean

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute settings
        #
        #   @return [Object, nil]
        optional :settings, Amocrm::Internal::Type::Unknown

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, code: nil, entity_type: nil, enums: nil, group_id: nil, is_deletable: nil, is_multiple: nil, is_required: nil, is_visible: nil, name: nil, settings: nil, sort: nil, type: nil)
        #   @param id [Integer]
        #   @param code [String]
        #   @param entity_type [String]
        #   @param enums [Array<Object>]
        #   @param group_id [Integer]
        #   @param is_deletable [Boolean]
        #   @param is_multiple [Boolean]
        #   @param is_required [Boolean]
        #   @param is_visible [Boolean]
        #   @param name [String]
        #   @param settings [Object]
        #   @param sort [Integer]
        #   @param type [String]
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
      #   @return [Array(Amocrm::Models::APICustomFieldsGetByIDResponse::CustomField, Amocrm::Models::APICustomFieldsGetByIDResponse::Problem)]
    end
  end
end
