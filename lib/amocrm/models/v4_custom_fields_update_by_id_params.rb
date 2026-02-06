# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#custom_fields_update_by_id
    class V4CustomFieldsUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [String]
      required :entity_type, String

      # @!attribute code
      #
      #   @return [String, nil]
      optional :code, String

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

      # @!method initialize(entity_type:, code: nil, enums: nil, group_id: nil, is_deletable: nil, is_multiple: nil, is_required: nil, is_visible: nil, name: nil, settings: nil, sort: nil, type: nil, request_options: {})
      #   @param entity_type [String]
      #   @param code [String]
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
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
