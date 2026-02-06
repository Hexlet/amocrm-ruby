# frozen_string_literal: true

module Amocrm
  module Resources
    class EntityNotes
      # Create notes for entity type.
      #
      # @overload create(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNoteCreateParams::EntityType]
      # @param body [Array<Amocrm::Models::EntityNoteCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNoteCreateResponse::NoteCreateResponse, Amocrm::Models::EntityNoteCreateResponse::Problem]
      #
      # @see Amocrm::Models::EntityNoteCreateParams
      def create(entity_type, params)
        parsed, options = Amocrm::EntityNoteCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::EntityNoteCreateResponse,
          options: options
        )
      end

      # Update notes for entity type (batch).
      #
      # @overload update(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNoteUpdateParams::EntityType]
      # @param body [Array<Amocrm::Models::EntityNoteUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNoteUpdateResponse::NoteCreateResponse, Amocrm::Models::EntityNoteUpdateResponse::Problem]
      #
      # @see Amocrm::Models::EntityNoteUpdateParams
      def update(entity_type, params)
        parsed, options = Amocrm::EntityNoteUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/notes", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::EntityNoteUpdateResponse,
          options: options
        )
      end

      # Get notes list for entity type.
      #
      # @overload list(entity_type, filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNoteListParams::EntityType]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNoteListResponse::NoteListResponse, Amocrm::Models::EntityNoteListResponse::Problem]
      #
      # @see Amocrm::Models::EntityNoteListParams
      def list(entity_type, params = {})
        parsed, options = Amocrm::EntityNoteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/notes", entity_type],
          query: parsed,
          model: Amocrm::Models::EntityNoteListResponse,
          options: options
        )
      end

      # Get note by id.
      #
      # @overload get_by_id(id, entity_type:, with: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNoteGetByIDParams::EntityType] Path param
      #
      # @param with [String] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNoteGetByIDResponse::Note, Amocrm::Models::EntityNoteGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::EntityNoteGetByIDParams
      def get_by_id(id, params)
        parsed, options = Amocrm::EntityNoteGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/notes/%2$s", entity_type, id],
          query: parsed,
          model: Amocrm::Models::EntityNoteGetByIDResponse,
          options: options
        )
      end

      # Pin note by id.
      #
      # @overload pin(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::EntityNotePinParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNotePinResponse::EmptyResponse, Amocrm::Models::EntityNotePinResponse::Problem]
      #
      # @see Amocrm::Models::EntityNotePinParams
      def pin(id, params)
        parsed, options = Amocrm::EntityNotePinParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes/%2$s/pin", entity_type, id],
          model: Amocrm::Models::EntityNotePinResponse,
          options: options
        )
      end

      # Unpin note by id.
      #
      # @overload unpin(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::EntityNoteUnpinParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityNoteUnpinResponse::EmptyResponse, Amocrm::Models::EntityNoteUnpinResponse::Problem]
      #
      # @see Amocrm::Models::EntityNoteUnpinParams
      def unpin(id, params)
        parsed, options = Amocrm::EntityNoteUnpinParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes/%2$s/unpin", entity_type, id],
          model: Amocrm::Models::EntityNoteUnpinResponse,
          options: options
        )
      end

      # Update note by id.
      #
      # @overload update_by_id(id, entity_type:, entity_id: nil, note_type: nil, params: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityNoteUpdateByIDParams::EntityType] Path param
      #
      # @param entity_id [Integer] Body param
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
      # @return [Amocrm::Models::EntityNoteUpdateByIDResponse::NoteCreateResponse, Amocrm::Models::EntityNoteUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::EntityNoteUpdateByIDParams
      def update_by_id(id, params)
        parsed, options = Amocrm::EntityNoteUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/notes/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::EntityNoteUpdateByIDResponse,
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
