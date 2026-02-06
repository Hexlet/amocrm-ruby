# frozen_string_literal: true

module Amocrm
  module Resources
    class Companies
      # Create companies.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CompanyCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CompanyCreateResponse::CompanyCreateResponse, Amocrm::Models::CompanyCreateResponse::Problem]
      #
      # @see Amocrm::Models::CompanyCreateParams
      def create(params)
        parsed, options = Amocrm::CompanyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/companies",
          body: parsed[:body],
          model: Amocrm::Models::CompanyCreateResponse,
          options: options
        )
      end

      # Update companies (batch).
      #
      # @overload update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CompanyUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CompanyUpdateResponse::CompanyUpdateResponse, Amocrm::Models::CompanyUpdateResponse::Problem]
      #
      # @see Amocrm::Models::CompanyUpdateParams
      def update(params)
        parsed, options = Amocrm::CompanyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/companies",
          body: parsed[:body],
          model: Amocrm::Models::CompanyUpdateResponse,
          options: options
        )
      end

      # Get a list of companies (pagination, sorting, filtering).
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
      # @return [Amocrm::Models::CompanyListResponse::CompanyListResponse, Amocrm::Models::CompanyListResponse::Problem]
      #
      # @see Amocrm::Models::CompanyListParams
      def list(params = {})
        parsed, options = Amocrm::CompanyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/companies",
          query: parsed,
          model: Amocrm::Models::CompanyListResponse,
          options: options
        )
      end

      # Get a company by id.
      #
      # @overload get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CompanyGetByIDResponse::Company, Amocrm::Models::CompanyGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::CompanyGetByIDParams
      def get_by_id(id, params = {})
        parsed, options = Amocrm::CompanyGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/companies/%1$s", id],
          query: parsed,
          model: Amocrm::Models::CompanyGetByIDResponse,
          options: options
        )
      end

      # Update a company by id.
      #
      # @overload update_by_id(id, _embedded: nil, created_at: nil, created_by: nil, custom_fields_values: nil, name: nil, responsible_user_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::CompanyUpdateByIDParams::Embedded]
      #
      # @param created_at [Integer]
      #
      # @param created_by [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::CompanyUpdateByIDParams::CustomFieldsValue>] Custom fields payload
      #
      # @param name [String]
      #
      # @param responsible_user_id [Integer]
      #
      # @param tags_to_add [Array<Amocrm::Models::CompanyUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::CompanyUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param updated_by [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CompanyUpdateByIDResponse::CompanyUpdateResponse, Amocrm::Models::CompanyUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::CompanyUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::CompanyUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/companies/%1$s", id],
          body: parsed,
          model: Amocrm::Models::CompanyUpdateByIDResponse,
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
