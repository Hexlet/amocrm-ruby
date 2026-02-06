# frozen_string_literal: true

module Amocrm
  module Resources
    class Contacts
      # Create contacts.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::ContactCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::ContactCreateResponse::ContactCreateResponse, Amocrm::Models::ContactCreateResponse::Problem]
      #
      # @see Amocrm::Models::ContactCreateParams
      def create(params)
        parsed, options = Amocrm::ContactCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/contacts",
          body: parsed[:body],
          model: Amocrm::Models::ContactCreateResponse,
          options: options
        )
      end

      # Update contacts (batch).
      #
      # @overload update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::ContactUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::ContactUpdateResponse::ContactUpdateResponse, Amocrm::Models::ContactUpdateResponse::Problem]
      #
      # @see Amocrm::Models::ContactUpdateParams
      def update(params)
        parsed, options = Amocrm::ContactUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/contacts",
          body: parsed[:body],
          model: Amocrm::Models::ContactUpdateResponse,
          options: options
        )
      end

      # Get a list of contacts (pagination, sorting, filtering).
      #
      # @overload list(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #
      # @param filter [Object] Filtering parameters
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
      # @return [Amocrm::Models::ContactListResponse::ContactListResponse, Amocrm::Models::ContactListResponse::Problem]
      #
      # @see Amocrm::Models::ContactListParams
      def list(params = {})
        parsed, options = Amocrm::ContactListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/contacts",
          query: parsed,
          model: Amocrm::Models::ContactListResponse,
          options: options
        )
      end

      # Get a contact by id.
      #
      # @overload get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::ContactGetByIDResponse::Contact, Amocrm::Models::ContactGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::ContactGetByIDParams
      def get_by_id(id, params = {})
        parsed, options = Amocrm::ContactGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/contacts/%1$s", id],
          query: parsed,
          model: Amocrm::Models::ContactGetByIDResponse,
          options: options
        )
      end

      # Update a contact by id.
      #
      # @overload update_by_id(id, _embedded: nil, created_at: nil, created_by: nil, custom_fields_values: nil, first_name: nil, last_name: nil, name: nil, responsible_user_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::ContactUpdateByIDParams::Embedded]
      #
      # @param created_at [Integer]
      #
      # @param created_by [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::ContactUpdateByIDParams::CustomFieldsValue>] Custom fields payload
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param name [String]
      #
      # @param responsible_user_id [Integer]
      #
      # @param tags_to_add [Array<Amocrm::Models::ContactUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::ContactUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param updated_by [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::ContactUpdateByIDResponse::ContactUpdateResponse, Amocrm::Models::ContactUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::ContactUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::ContactUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/contacts/%1$s", id],
          body: parsed,
          model: Amocrm::Models::ContactUpdateByIDResponse,
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
