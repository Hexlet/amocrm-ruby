# frozen_string_literal: true

module Amocrm
  module Resources
    class EntityLinks
      # Get list of linked entities (bulk).
      #
      # @overload list(entity_type, filter: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityLinkListParams::EntityType]
      # @param filter [Object]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityLinkListResponse::EntityLinksResponse, Amocrm::Models::EntityLinkListResponse::Problem]
      #
      # @see Amocrm::Models::EntityLinkListParams
      def list(entity_type, params = {})
        parsed, options = Amocrm::EntityLinkListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/links", entity_type],
          query: parsed,
          model: Amocrm::Models::EntityLinkListResponse,
          options: options
        )
      end

      # Link entities (bulk).
      #
      # @overload link(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityLinkLinkParams::EntityType]
      # @param body [Array<Amocrm::Models::EntityLinkLinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityLinkLinkResponse::EmptyResponse, Amocrm::Models::EntityLinkLinkResponse::Problem]
      #
      # @see Amocrm::Models::EntityLinkLinkParams
      def link(entity_type, params)
        parsed, options = Amocrm::EntityLinkLinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/link", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::EntityLinkLinkResponse,
          options: options
        )
      end

      # Link entities for a specific entity.
      #
      # @overload link_by_entity(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityLinkLinkByEntityParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::EntityLinkLinkByEntityParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityLinkLinkByEntityResponse::EmptyResponse, Amocrm::Models::EntityLinkLinkByEntityResponse::Problem]
      #
      # @see Amocrm::Models::EntityLinkLinkByEntityParams
      def link_by_entity(entity_id, params)
        parsed, options = Amocrm::EntityLinkLinkByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/link", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::EntityLinkLinkByEntityResponse,
          options: options
        )
      end

      # Get links for a specific entity.
      #
      # @overload list_by_entity(entity_id, entity_type:, request_options: {})
      #
      # @param entity_id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::EntityLinkListByEntityParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse, Amocrm::Models::EntityLinkListByEntityResponse::Problem]
      #
      # @see Amocrm::Models::EntityLinkListByEntityParams
      def list_by_entity(entity_id, params)
        parsed, options = Amocrm::EntityLinkListByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/links", entity_type, entity_id],
          model: Amocrm::Models::EntityLinkListByEntityResponse,
          options: options
        )
      end

      # Unlink entities (bulk).
      #
      # @overload unlink(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityLinkUnlinkParams::EntityType]
      # @param body [Array<Amocrm::Models::EntityLinkUnlinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityLinkUnlinkResponse::EmptyResponse, Amocrm::Models::EntityLinkUnlinkResponse::Problem]
      #
      # @see Amocrm::Models::EntityLinkUnlinkParams
      def unlink(entity_type, params)
        parsed, options = Amocrm::EntityLinkUnlinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/unlink", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::EntityLinkUnlinkResponse,
          options: options
        )
      end

      # Unlink entities for a specific entity.
      #
      # @overload unlink_by_entity(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::EntityLinkUnlinkByEntityParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::EntityLinkUnlinkByEntityParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EntityLinkUnlinkByEntityResponse::EmptyResponse, Amocrm::Models::EntityLinkUnlinkByEntityResponse::Problem]
      #
      # @see Amocrm::Models::EntityLinkUnlinkByEntityParams
      def unlink_by_entity(entity_id, params)
        parsed, options = Amocrm::EntityLinkUnlinkByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/unlink", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::EntityLinkUnlinkByEntityResponse,
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
