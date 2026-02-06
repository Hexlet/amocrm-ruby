# frozen_string_literal: true

module Amocrm
  module Resources
    class Catalogs
      # Create catalogs.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CatalogCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogCreateResponse::CatalogCreateResponse, Amocrm::Models::CatalogCreateResponse::Problem]
      #
      # @see Amocrm::Models::CatalogCreateParams
      def create(params)
        parsed, options = Amocrm::CatalogCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/catalogs",
          body: parsed[:body],
          model: Amocrm::Models::CatalogCreateResponse,
          options: options
        )
      end

      # Update catalogs (batch).
      #
      # @overload update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CatalogUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogUpdateResponse::CatalogUpdateResponse, Amocrm::Models::CatalogUpdateResponse::Problem]
      #
      # @see Amocrm::Models::CatalogUpdateParams
      def update(params)
        parsed, options = Amocrm::CatalogUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/catalogs",
          body: parsed[:body],
          model: Amocrm::Models::CatalogUpdateResponse,
          options: options
        )
      end

      # Get catalogs list.
      #
      # @overload list(limit: nil, page: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogListResponse::CatalogListResponse, Amocrm::Models::CatalogListResponse::Problem]
      #
      # @see Amocrm::Models::CatalogListParams
      def list(params = {})
        parsed, options = Amocrm::CatalogListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/catalogs",
          query: parsed,
          model: Amocrm::Models::CatalogListResponse,
          options: options
        )
      end

      # Get catalog by id.
      #
      # @overload get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogGetByIDResponse::Catalog, Amocrm::Models::CatalogGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::CatalogGetByIDParams
      def get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s", id],
          model: Amocrm::Models::CatalogGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Update catalog by id.
      #
      # @overload update_by_id(id, can_add_elements: nil, can_link_multiple: nil, name: nil, request_id: nil, sort: nil, request_options: {})
      #
      # @param id [Integer]
      # @param can_add_elements [Boolean]
      # @param can_link_multiple [Boolean]
      # @param name [String]
      # @param request_id [String]
      # @param sort [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CatalogUpdateByIDResponse::CatalogUpdateResponse, Amocrm::Models::CatalogUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::CatalogUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::CatalogUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s", id],
          body: parsed,
          model: Amocrm::Models::CatalogUpdateByIDResponse,
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
