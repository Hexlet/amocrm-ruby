# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityNotes#get_by_id
    class EntityNoteGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityNoteGetByIDParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityNoteGetByIDParams::EntityType }

      # @!attribute with
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(entity_type:, with: nil, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityNoteGetByIDParams::EntityType]
      #   @param with [String]
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
