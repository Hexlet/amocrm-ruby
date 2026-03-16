# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CustomFieldGroups#delete_by_id
    class CustomFieldGroupDeleteByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [String]
      required :entity_type, String

      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!method initialize(entity_type:, id:, request_options: {})
      #   @param entity_type [String]
      #   @param id [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
