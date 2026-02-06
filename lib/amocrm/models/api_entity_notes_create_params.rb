# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#entity_notes_create
    class APIEntityNotesCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APIEntityNotesCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APIEntityNotesCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APIEntityNotesCreateParams::Body>]
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

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute note_type
        #
        #   @return [String]
        required :note_type, String

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute entity_id
        #
        #   @return [Integer, nil]
        optional :entity_id, Integer

        # @!attribute is_need_to_trigger_digital_pipeline
        #
        #   @return [Boolean, nil]
        optional :is_need_to_trigger_digital_pipeline, Amocrm::Internal::Type::Boolean

        # @!attribute params
        #
        #   @return [Object, nil]
        optional :params, Amocrm::Internal::Type::Unknown

        # @!attribute request_id
        #   Client-side request id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute responsible_user_id
        #
        #   @return [Integer, nil]
        optional :responsible_user_id, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!method initialize(note_type:, created_at: nil, created_by: nil, entity_id: nil, is_need_to_trigger_digital_pipeline: nil, params: nil, request_id: nil, responsible_user_id: nil, updated_by: nil)
        #   @param note_type [String]
        #
        #   @param created_at [Integer]
        #
        #   @param created_by [Integer]
        #
        #   @param entity_id [Integer]
        #
        #   @param is_need_to_trigger_digital_pipeline [Boolean]
        #
        #   @param params [Object]
        #
        #   @param request_id [String] Client-side request id
        #
        #   @param responsible_user_id [Integer]
        #
        #   @param updated_by [Integer]
      end
    end
  end
end
