# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityLinks#list_by_entity
    class EntityLinkListByEntityParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityLinkListByEntityParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityLinkListByEntityParams::EntityType }

      # @!attribute entity_id
      #
      #   @return [Integer]
      required :entity_id, Integer

      # @!method initialize(entity_type:, entity_id:, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityLinkListByEntityParams::EntityType]
      #   @param entity_id [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      module EntityType
        extend Amocrm::Internal::Type::Enum

        LEADS = :leads
        CONTACTS = :contacts
        COMPANIES = :companies
        CUSTOMERS = :customers

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
