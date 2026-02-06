# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityNotesByParent#get_by_parent_id
    class EntityNotesByParentGetByParentIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityNotesByParentGetByParentIDParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityNotesByParentGetByParentIDParams::EntityType }

      # @!attribute entity_id
      #
      #   @return [Integer]
      required :entity_id, Integer

      # @!attribute with
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(entity_type:, entity_id:, with: nil, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityNotesByParentGetByParentIDParams::EntityType]
      #   @param entity_id [Integer]
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
