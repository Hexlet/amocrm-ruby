# typed: strong

module Amocrm
  module Resources
    class EntityNotes
      # Create notes for entity type.
      sig do
        params(
          entity_type: Amocrm::EntityNoteCreateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityNoteCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityNoteCreateResponse::Variants)
      end
      def create(entity_type, body:, request_options: {})
      end

      # Update notes for entity type (batch).
      sig do
        params(
          entity_type: Amocrm::EntityNoteUpdateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityNoteUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityNoteUpdateResponse::Variants)
      end
      def update(entity_type, body:, request_options: {})
      end

      # Get notes list for entity type.
      sig do
        params(
          entity_type: Amocrm::EntityNoteListParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityNoteListResponse::Variants)
      end
      def list(
        entity_type,
        filter: nil,
        limit: nil,
        page: nil,
        request_options: {}
      )
      end

      # Get note by id.
      sig do
        params(
          id: Integer,
          entity_type: Amocrm::EntityNoteGetByIDParams::EntityType::OrSymbol,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityNoteGetByIDResponse::Variants)
      end
      def get_by_id(
        # Path param
        id,
        # Path param
        entity_type:,
        # Query param
        with: nil,
        request_options: {}
      )
      end

      # Pin note by id.
      sig do
        params(
          id: Integer,
          entity_type: Amocrm::EntityNotePinParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityNotePinResponse::Variants)
      end
      def pin(id, entity_type:, request_options: {})
      end

      # Unpin note by id.
      sig do
        params(
          id: Integer,
          entity_type: Amocrm::EntityNoteUnpinParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityNoteUnpinResponse::Variants)
      end
      def unpin(id, entity_type:, request_options: {})
      end

      # Update note by id.
      sig do
        params(
          id: Integer,
          entity_type: Amocrm::EntityNoteUpdateByIDParams::EntityType::OrSymbol,
          entity_id: Integer,
          note_type: String,
          params: T.anything,
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityNoteUpdateByIDResponse::Variants)
      end
      def update_by_id(
        # Path param
        id,
        # Path param
        entity_type:,
        # Body param
        entity_id: nil,
        # Body param
        note_type: nil,
        # Body param
        params: nil,
        # Body param
        updated_at: nil,
        # Body param
        updated_by: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
