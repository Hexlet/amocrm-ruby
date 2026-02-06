# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityNotesByParent#get_by_parent_id
    module EntityNotesByParentGetByParentIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Note }

      variant -> { Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Problem }

      class Note < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute account_id
        #
        #   @return [Integer, nil]
        optional :account_id, Integer

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

        # @!attribute group_id
        #
        #   @return [Integer, nil]
        optional :group_id, Integer

        # @!attribute is_pinned
        #
        #   @return [Boolean, nil]
        optional :is_pinned, Amocrm::Internal::Type::Boolean

        # @!attribute note_type
        #
        #   @return [String, nil]
        optional :note_type, String

        # @!attribute params
        #
        #   @return [Object, nil]
        optional :params, Amocrm::Internal::Type::Unknown

        # @!attribute responsible_user_id
        #
        #   @return [Integer, nil]
        optional :responsible_user_id, Integer

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!method initialize(id: nil, _links: nil, account_id: nil, created_at: nil, created_by: nil, entity_id: nil, group_id: nil, is_pinned: nil, note_type: nil, params: nil, responsible_user_id: nil, updated_at: nil, updated_by: nil)
        #   @param id [Integer]
        #   @param _links [Object]
        #   @param account_id [Integer]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param entity_id [Integer]
        #   @param group_id [Integer]
        #   @param is_pinned [Boolean]
        #   @param note_type [String]
        #   @param params [Object]
        #   @param responsible_user_id [Integer]
        #   @param updated_at [Integer]
        #   @param updated_by [Integer]
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(detail: nil, status: nil, title: nil, type: nil)
        #   @param detail [String]
        #   @param status [Integer]
        #   @param title [String]
        #   @param type [String]
      end

      # @!method self.variants
      #   @return [Array(Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Note, Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Problem)]
    end
  end
end
