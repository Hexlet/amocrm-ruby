# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityNotes#pin
    class EntityNotePinParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityNotePinParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityNotePinParams::EntityType }

      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!method initialize(entity_type:, id:, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityNotePinParams::EntityType]
      #   @param id [Integer]
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
