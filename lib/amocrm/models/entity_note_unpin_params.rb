# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityNotes#unpin
    class EntityNoteUnpinParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityNoteUnpinParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityNoteUnpinParams::EntityType }

      # @!method initialize(entity_type:, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityNoteUnpinParams::EntityType]
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
