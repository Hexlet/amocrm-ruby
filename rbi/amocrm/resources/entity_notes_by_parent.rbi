# typed: strong

module Amocrm
  module Resources
    class EntityNotesByParent
      # Create notes for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::EntityNotesByParentCreateByParentParams::EntityType::OrSymbol,
          body:
            T::Array[
              Amocrm::EntityNotesByParentCreateByParentParams::Body::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::EntityNotesByParentCreateByParentResponse::Variants
        )
      end
      def create_by_parent(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Get note by id for a specific entity.
      sig do
        params(
          note_id: Integer,
          entity_type:
            Amocrm::EntityNotesByParentGetByParentIDParams::EntityType::OrSymbol,
          entity_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Variants
        )
      end
      def get_by_parent_id(
        # Path param
        note_id,
        # Path param
        entity_type:,
        # Path param
        entity_id:,
        # Query param
        with: nil,
        request_options: {}
      )
      end

      # Get notes list for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::EntityNotesByParentListByParentParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::EntityNotesByParentListByParentResponse::Variants
        )
      end
      def list_by_parent(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Query param
        filter: nil,
        # Query param
        limit: nil,
        # Query param
        page: nil,
        request_options: {}
      )
      end

      # Update notes for a specific entity (batch).
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::EntityNotesByParentUpdateByParentParams::EntityType::OrSymbol,
          body:
            T::Array[
              Amocrm::EntityNotesByParentUpdateByParentParams::Body::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::EntityNotesByParentUpdateByParentResponse::Variants
        )
      end
      def update_by_parent(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Update note by id for a specific entity.
      sig do
        params(
          note_id: Integer,
          entity_type:
            Amocrm::EntityNotesByParentUpdateByParentIDParams::EntityType::OrSymbol,
          body_entity_id: Integer,
          note_type: String,
          params: T.anything,
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::EntityNotesByParentUpdateByParentIDResponse::Variants
        )
      end
      def update_by_parent_id(
        # Path param
        note_id,
        # Path param
        entity_type:,
        # Body param
        body_entity_id: nil,
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
