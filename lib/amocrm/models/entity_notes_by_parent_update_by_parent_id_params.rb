# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityNotesByParent#update_by_parent_id
    class EntityNotesByParentUpdateByParentIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityNotesByParentUpdateByParentIDParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityNotesByParentUpdateByParentIDParams::EntityType }

      # @!attribute body_entity_id
      #
      #   @return [Integer, nil]
      optional :body_entity_id, Integer, api_name: :entity_id

      # @!attribute note_type
      #
      #   @return [String, nil]
      optional :note_type, String

      # @!attribute params
      #
      #   @return [Object, nil]
      optional :params, Amocrm::Internal::Type::Unknown

      # @!attribute updated_at
      #
      #   @return [Integer, nil]
      optional :updated_at, Integer

      # @!attribute updated_by
      #
      #   @return [Integer, nil]
      optional :updated_by, Integer

      # @!method initialize(entity_type:, body_entity_id: nil, note_type: nil, params: nil, updated_at: nil, updated_by: nil, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityNotesByParentUpdateByParentIDParams::EntityType]
      #   @param body_entity_id [Integer]
      #   @param note_type [String]
      #   @param params [Object]
      #   @param updated_at [Integer]
      #   @param updated_by [Integer]
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
