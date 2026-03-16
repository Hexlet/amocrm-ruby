# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityLinks#list
    class EntityLinkListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityLinkListParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityLinkListParams::EntityType }

      # @!attribute filter
      #
      #   @return [Object, nil]
      optional :filter, Amocrm::Internal::Type::Unknown

      # @!method initialize(entity_type:, filter: nil, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityLinkListParams::EntityType]
      #   @param filter [Object]
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
