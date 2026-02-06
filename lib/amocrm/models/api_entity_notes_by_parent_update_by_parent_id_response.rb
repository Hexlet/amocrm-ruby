# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#entity_notes_by_parent_update_by_parent_id
    module APIEntityNotesByParentUpdateByParentIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse }

      variant -> { Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::Problem }

      class NoteCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute notes
          #
          #   @return [Array<Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse::Embedded::Note>, nil]
          optional :notes,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse::Embedded::Note] }

          # @!method initialize(notes: nil)
          #   @param notes [Array<Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse::Embedded::Note>]

          class Note < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute entity_id
            #
            #   @return [Integer, nil]
            optional :entity_id, Integer

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!attribute updated_at
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!method initialize(id: nil, _links: nil, entity_id: nil, request_id: nil, updated_at: nil)
            #   @param id [Integer]
            #   @param _links [Object]
            #   @param entity_id [Integer]
            #   @param request_id [String]
            #   @param updated_at [Integer]
          end
        end
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
      #   @return [Array(Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse, Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::Problem)]
    end
  end
end
