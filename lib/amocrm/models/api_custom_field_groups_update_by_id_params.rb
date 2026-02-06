# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#custom_field_groups_update_by_id
    class APICustomFieldGroupsUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [String]
      required :entity_type, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute sort
      #
      #   @return [Integer, nil]
      optional :sort, Integer

      # @!method initialize(entity_type:, name: nil, sort: nil, request_options: {})
      #   @param entity_type [String]
      #   @param name [String]
      #   @param sort [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
