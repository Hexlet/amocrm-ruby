# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#custom_fields_create
    class APICustomFieldsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APICustomFieldsCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICustomFieldsCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APICustomFieldsCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

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

        # @!attribute request_id
        #   Client-side request id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute settings
        #
        #   @return [Object, nil]
        optional :settings, Amocrm::Internal::Type::Unknown

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!method initialize(name:, type:, code: nil, enums: nil, group_id: nil, is_deletable: nil, is_multiple: nil, is_required: nil, is_visible: nil, request_id: nil, settings: nil, sort: nil)
        #   @param name [String]
        #
        #   @param type [String]
        #
        #   @param code [String]
        #
        #   @param enums [Array<Object>]
        #
        #   @param group_id [Integer]
        #
        #   @param is_deletable [Boolean]
        #
        #   @param is_multiple [Boolean]
        #
        #   @param is_required [Boolean]
        #
        #   @param is_visible [Boolean]
        #
        #   @param request_id [String] Client-side request id
        #
        #   @param settings [Object]
        #
        #   @param sort [Integer]
      end
    end
  end
end
