# frozen_string_literal: true

module Amocrm
  module Resources
    class EntityFollowers
      # Get followers list.
      #
      # @overload list(entity_id, entity_type:, limit: nil, page: nil, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityFollowerListParams::EntityType] Path param
      #
      # @param limit [Integer] Query param
      #
      # @param page [Integer] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityFollowerListResponse::EntityFollowerListResponse, Amocrm::Models::EntityFollowerListResponse::Problem]
      #
      # @see Amocrm::Models::EntityFollowerListParams
      def list(entity_id, params)
        parsed, options = Amocrm::EntityFollowerListParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          query: parsed,
          model: Amocrm::Models::EntityFollowerListResponse,
          options: options
        )
      end

      # Add followers.
      #
      # @overload add(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityFollowerAddParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::EntityFollowerAddParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse, Amocrm::Models::EntityFollowerAddResponse::Problem]
      #
      # @see Amocrm::Models::EntityFollowerAddParams
      def add(entity_id, params)
        parsed, options = Amocrm::EntityFollowerAddParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::EntityFollowerAddResponse,
          options: options
        )
      end

      # Remove followers.
      #
      # @overload remove(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityFollowerRemoveParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::EntityFollowerRemoveParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityFollowerRemoveResponse::EmptyResponse, Amocrm::Models::EntityFollowerRemoveResponse::Problem]
      #
      # @see Amocrm::Models::EntityFollowerRemoveParams
      def remove(entity_id, params)
        parsed, options = Amocrm::EntityFollowerRemoveParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::EntityFollowerRemoveResponse,
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
