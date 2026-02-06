# frozen_string_literal: true

module Amocrm
  module Resources
    class Customers
      # Create customers.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CustomerCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse, Amocrm::Models::CustomerCreateResponse::Problem]
      #
      # @see Amocrm::Models::CustomerCreateParams
      def create(params)
        parsed, options = Amocrm::CustomerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers",
          body: parsed[:body],
          model: Amocrm::Models::CustomerCreateResponse,
          options: options
        )
      end

      # Update customers (batch).
      #
      # @overload update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CustomerUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerUpdateResponse::CustomerUpdateResponse, Amocrm::Models::CustomerUpdateResponse::Problem]
      #
      # @see Amocrm::Models::CustomerUpdateParams
      def update(params)
        parsed, options = Amocrm::CustomerUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/customers",
          body: parsed[:body],
          model: Amocrm::Models::CustomerUpdateResponse,
          options: options
        )
      end

      # Get a list of customers.
      #
      # @overload list(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #
      # @param filter [Object]
      #
      # @param limit [Integer]
      #
      # @param order [Object]
      #
      # @param page [Integer]
      #
      # @param query [String, Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerListResponse::CustomerListResponse, Amocrm::Models::CustomerListResponse::Problem]
      #
      # @see Amocrm::Models::CustomerListParams
      def list(params = {})
        parsed, options = Amocrm::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/customers",
          query: parsed,
          model: Amocrm::Models::CustomerListResponse,
          options: options
        )
      end

      # Get a customer by id.
      #
      # @overload get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerGetByIDResponse::Customer, Amocrm::Models::CustomerGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerGetByIDParams
      def get_by_id(id, params = {})
        parsed, options = Amocrm::CustomerGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/customers/%1$s", id],
          query: parsed,
          model: Amocrm::Models::CustomerGetByIDResponse,
          options: options
        )
      end

      # Update a customer by id.
      #
      # @overload update_by_id(id, _embedded: nil, custom_fields_values: nil, main_user_id: nil, name: nil, next_date: nil, next_price: nil, periodicity: nil, responsible_user_id: nil, status_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      # @param _embedded [Amocrm::Models::CustomerUpdateByIDParams::Embedded]
      # @param custom_fields_values [Array<Amocrm::Models::CustomerUpdateByIDParams::CustomFieldsValue>]
      # @param main_user_id [Integer]
      # @param name [String]
      # @param next_date [Integer]
      # @param next_price [Integer]
      # @param periodicity [Integer]
      # @param responsible_user_id [Integer]
      # @param status_id [Integer]
      # @param tags_to_add [Array<Amocrm::Models::CustomerUpdateByIDParams::TagsToAdd>]
      # @param tags_to_delete [Array<Amocrm::Models::CustomerUpdateByIDParams::TagsToDelete>]
      # @param updated_at [Integer]
      # @param updated_by [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerUpdateByIDResponse::CustomerUpdateResponse, Amocrm::Models::CustomerUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::CustomerUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/%1$s", id],
          body: parsed,
          model: Amocrm::Models::CustomerUpdateByIDResponse,
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
