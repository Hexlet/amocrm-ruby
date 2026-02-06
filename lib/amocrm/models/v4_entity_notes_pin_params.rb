# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#entity_notes_pin
    class V4EntityNotesPinParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::V4EntityNotesPinParams::EntityType]
      required :entity_type, enum: -> { Amocrm::V4EntityNotesPinParams::EntityType }

      # @!method initialize(entity_type:, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::V4EntityNotesPinParams::EntityType]
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
