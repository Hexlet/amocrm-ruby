# frozen_string_literal: true

module Amocrm
  module Resources
    class Tags
      # Create tags.
      #
      # @overload create(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::TagCreateParams::EntityType]
      # @param body [Array<Amocrm::Models::TagCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TagCreateResponse::TagCreateResponse, Amocrm::Models::TagCreateResponse::Problem]
      #
      # @see Amocrm::Models::TagCreateParams
      def create(entity_type, params)
        parsed, options = Amocrm::TagCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/tags", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::TagCreateResponse,
          options: options
        )
      end

      # Get tags list.
      #
      # @overload list(entity_type, filter: nil, limit: nil, page: nil, query: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::TagListParams::EntityType]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param query [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TagListResponse::TagListResponse, Amocrm::Models::TagListResponse::Problem]
      #
      # @see Amocrm::Models::TagListParams
      def list(entity_type, params = {})
        parsed, options = Amocrm::TagListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/tags", entity_type],
          query: parsed,
          model: Amocrm::Models::TagListResponse,
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
