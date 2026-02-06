# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CustomFieldGroups#get_by_id
    class CustomFieldGroupGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [String]
      required :entity_type, String

      # @!method initialize(entity_type:, request_options: {})
      #   @param entity_type [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
