# frozen_string_literal: true

module Amocrm
  module Resources
    class Leads
      # Create leads.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::LeadCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::LeadCreateResponse::LeadCreateResponse, Amocrm::Models::LeadCreateResponse::Problem]
      #
      # @see Amocrm::Models::LeadCreateParams
      def create(params)
        parsed, options = Amocrm::LeadCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads",
          body: parsed[:body],
          model: Amocrm::Models::LeadCreateResponse,
          options: options
        )
      end

      # Update leads (batch).
      #
      # @overload update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::LeadUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::LeadUpdateResponse::LeadUpdateResponse, Amocrm::Models::LeadUpdateResponse::Problem]
      #
      # @see Amocrm::Models::LeadUpdateParams
      def update(params)
        parsed, options = Amocrm::LeadUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/leads",
          body: parsed[:body],
          model: Amocrm::Models::LeadUpdateResponse,
          options: options
        )
      end

      # Get a list of leads (pagination, sorting, filtering).
      #
      # @overload list(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #
      # @param filter [Object] Filtering parameters, see filters API
      #
      # @param limit [Integer] Pagination limit
      #
      # @param order [Object] Sorting, e.g. order[updated_at]=asc
      #
      # @param page [Integer] Pagination page
      #
      # @param query [String, Integer] Search by query string or id
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::LeadListResponse::LeadListResponse, Amocrm::Models::LeadListResponse::Problem]
      #
      # @see Amocrm::Models::LeadListParams
      def list(params = {})
        parsed, options = Amocrm::LeadListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/leads",
          query: parsed,
          model: Amocrm::Models::LeadListResponse,
          options: options
        )
      end

      # Create leads using the complex method (supports unsorted metadata).
      #
      # @overload create_complex(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::LeadCreateComplexParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::LeadCreateComplexResponse::LeadComplexCreateResponse, Amocrm::Models::LeadCreateComplexResponse::Problem]
      #
      # @see Amocrm::Models::LeadCreateComplexParams
      def create_complex(params)
        parsed, options = Amocrm::LeadCreateComplexParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/complex",
          body: parsed[:body],
          model: Amocrm::Models::LeadCreateComplexResponse,
          options: options
        )
      end

      # Get a lead by id.
      #
      # @overload get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::LeadGetByIDResponse::Lead, Amocrm::Models::LeadGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::LeadGetByIDParams
      def get_by_id(id, params = {})
        parsed, options = Amocrm::LeadGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/leads/%1$s", id],
          query: parsed,
          model: Amocrm::Models::LeadGetByIDResponse,
          options: options
        )
      end

      # Update a lead by id.
      #
      # @overload update_by_id(id, _embedded: nil, closed_at: nil, custom_fields_values: nil, group_id: nil, loss_reason_id: nil, name: nil, pipeline_id: nil, price: nil, responsible_user_id: nil, status_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::LeadUpdateByIDParams::Embedded]
      #
      # @param closed_at [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::LeadUpdateByIDParams::CustomFieldsValue>] Custom fields payload
      #
      # @param group_id [Integer]
      #
      # @param loss_reason_id [Integer]
      #
      # @param name [String]
      #
      # @param pipeline_id [Integer]
      #
      # @param price [Integer]
      #
      # @param responsible_user_id [Integer]
      #
      # @param status_id [Integer]
      #
      # @param tags_to_add [Array<Amocrm::Models::LeadUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::LeadUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::LeadUpdateByIDResponse::LeadUpdateResponse, Amocrm::Models::LeadUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::LeadUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::LeadUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/%1$s", id],
          body: parsed,
          model: Amocrm::Models::LeadUpdateByIDResponse,
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
