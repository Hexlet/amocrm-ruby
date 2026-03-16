# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityNotes#list
    class EntityNoteListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityNoteListParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityNoteListParams::EntityType }

      # @!attribute filter
      #
      #   @return [Object, nil]
      optional :filter, Amocrm::Internal::Type::Unknown

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!method initialize(entity_type:, filter: nil, limit: nil, page: nil, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityNoteListParams::EntityType]
      #   @param filter [Object]
      #   @param limit [Integer]
      #   @param page [Integer]
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
