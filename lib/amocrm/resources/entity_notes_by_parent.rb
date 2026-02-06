# frozen_string_literal: true

module Amocrm
  module Resources
    class EntityNotesByParent
      # Create notes for a specific entity.
      #
      # @overload create_by_parent(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNotesByParentCreateByParentParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::EntityNotesByParentCreateByParentParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNotesByParentCreateByParentResponse::NoteCreateResponse, Amocrm::Models::EntityNotesByParentCreateByParentResponse::Problem]
      #
      # @see Amocrm::Models::EntityNotesByParentCreateByParentParams
      def create_by_parent(entity_id, params)
        parsed, options = Amocrm::EntityNotesByParentCreateByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::EntityNotesByParentCreateByParentResponse,
          options: options
        )
      end

      # Get note by id for a specific entity.
      #
      # @overload get_by_parent_id(note_id, entity_type:, entity_id:, with: nil, request_options: {})
      #
      # @param note_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNotesByParentGetByParentIDParams::EntityType] Path param
      #
      # @param entity_id [Integer] Path param
      #
      # @param with [String] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Note, Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Problem]
      #
      # @see Amocrm::Models::EntityNotesByParentGetByParentIDParams
      def get_by_parent_id(note_id, params)
        parsed, options = Amocrm::EntityNotesByParentGetByParentIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        entity_id =
          parsed.delete(:entity_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/notes/%3$s", entity_type, entity_id, note_id],
          query: parsed,
          model: Amocrm::Models::EntityNotesByParentGetByParentIDResponse,
          options: options
        )
      end

      # Get notes list for a specific entity.
      #
      # @overload list_by_parent(entity_id, entity_type:, filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNotesByParentListByParentParams::EntityType] Path param
      #
      # @param filter [Object] Query param
      #
      # @param limit [Integer] Query param
      #
      # @param page [Integer] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNotesByParentListByParentResponse::NoteListResponse, Amocrm::Models::EntityNotesByParentListByParentResponse::Problem]
      #
      # @see Amocrm::Models::EntityNotesByParentListByParentParams
      def list_by_parent(entity_id, params)
        parsed, options = Amocrm::EntityNotesByParentListByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          query: parsed,
          model: Amocrm::Models::EntityNotesByParentListByParentResponse,
          options: options
        )
      end

      # Update notes for a specific entity (batch).
      #
      # @overload update_by_parent(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNotesByParentUpdateByParentParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::EntityNotesByParentUpdateByParentParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNotesByParentUpdateByParentResponse::NoteCreateResponse, Amocrm::Models::EntityNotesByParentUpdateByParentResponse::Problem]
      #
      # @see Amocrm::Models::EntityNotesByParentUpdateByParentParams
      def update_by_parent(entity_id, params)
        parsed, options = Amocrm::EntityNotesByParentUpdateByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::EntityNotesByParentUpdateByParentResponse,
          options: options
        )
      end

      # Update note by id for a specific entity.
      #
      # @overload update_by_parent_id(note_id, entity_type:, body_entity_id: nil, note_type: nil, params: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param note_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNotesByParentUpdateByParentIDParams::EntityType] Path param
      #
      # @param body_entity_id [Integer] Body param
      #
      # @param note_type [String] Body param
      #
      # @param params [Object] Body param
      #
      # @param updated_at [Integer] Body param
      #
      # @param updated_by [Integer] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse, Amocrm::Models::EntityNotesByParentUpdateByParentIDResponse::Problem]
      #
      # @see Amocrm::Models::EntityNotesByParentUpdateByParentIDParams
      def update_by_parent_id(note_id, params)
        parsed, options = Amocrm::EntityNotesByParentUpdateByParentIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        path_entity_id =
          parsed.delete(:path_entity_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/%2$s/notes/%3$s", entity_type, path_entity_id, note_id],
          body: parsed,
          model: Amocrm::Models::EntityNotesByParentUpdateByParentIDResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Amocrm::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
