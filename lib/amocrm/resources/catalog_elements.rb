# frozen_string_literal: true

module Amocrm
  module Resources
    class CatalogElements
      # Create catalog elements.
      #
      # @overload create(catalog_id, body:, request_options: {})
      #
      # @param catalog_id [Integer]
      # @param body [Array<Amocrm::Models::CatalogElementCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogElementCreateResponse::CatalogElementCreateResponse, Amocrm::Models::CatalogElementCreateResponse::Problem]
      #
      # @see Amocrm::Models::CatalogElementCreateParams
      def create(catalog_id, params)
        parsed, options = Amocrm::CatalogElementCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          body: parsed[:body],
          model: Amocrm::Models::CatalogElementCreateResponse,
          options: options
        )
      end

      # Update catalog elements (batch).
      #
      # @overload update(catalog_id, body:, request_options: {})
      #
      # @param catalog_id [Integer]
      # @param body [Array<Amocrm::Models::CatalogElementUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogElementUpdateResponse::CatalogElementUpdateResponse, Amocrm::Models::CatalogElementUpdateResponse::Problem]
      #
      # @see Amocrm::Models::CatalogElementUpdateParams
      def update(catalog_id, params)
        parsed, options = Amocrm::CatalogElementUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          body: parsed[:body],
          model: Amocrm::Models::CatalogElementUpdateResponse,
          options: options
        )
      end

      # Get catalog elements list.
      #
      # @overload list(catalog_id, filter: nil, limit: nil, page: nil, query: nil, request_options: {})
      #
      # @param catalog_id [Integer]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param query [String, Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogElementListResponse::CatalogElementListResponse, Amocrm::Models::CatalogElementListResponse::Problem]
      #
      # @see Amocrm::Models::CatalogElementListParams
      def list(catalog_id, params = {})
        parsed, options = Amocrm::CatalogElementListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          query: parsed,
          model: Amocrm::Models::CatalogElementListResponse,
          options: options
        )
      end

      # Get catalog element by id.
      #
      # @overload get_by_id(id, catalog_id:, with: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param catalog_id [Integer] Path param
      #
      # @param with [String] Query param: Additional data to include (comma-separated).
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement, Amocrm::Models::CatalogElementGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::CatalogElementGetByIDParams
      def get_by_id(id, params)
        parsed, options = Amocrm::CatalogElementGetByIDParams.dump_request(params)
        catalog_id =
          parsed.delete(:catalog_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s/elements/%2$s", catalog_id, id],
          query: parsed,
          model: Amocrm::Models::CatalogElementGetByIDResponse,
          options: options
        )
      end

      # Update catalog element by id.
      #
      # @overload update_by_id(id, catalog_id:, custom_fields_values: nil, name: nil, request_id: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param catalog_id [Integer] Path param
      #
      # @param custom_fields_values [Array<Amocrm::Models::CatalogElementUpdateByIDParams::CustomFieldsValue>] Body param
      #
      # @param name [String] Body param
      #
      # @param request_id [String] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogElementUpdateByIDResponse::CatalogElementUpdateResponse, Amocrm::Models::CatalogElementUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::CatalogElementUpdateByIDParams
      def update_by_id(id, params)
        parsed, options = Amocrm::CatalogElementUpdateByIDParams.dump_request(params)
        catalog_id =
          parsed.delete(:catalog_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s/elements/%2$s", catalog_id, id],
          body: parsed,
          model: Amocrm::Models::CatalogElementUpdateByIDResponse,
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
