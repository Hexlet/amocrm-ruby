# frozen_string_literal: true

module Amocrm
  module Resources
    class Roles
      # Create roles (batch).
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::RoleCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::RoleCreateResponse::RoleCreateResponse, Amocrm::Models::RoleCreateResponse::Problem]
      #
      # @see Amocrm::Models::RoleCreateParams
      def create(params)
        parsed, options = Amocrm::RoleCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/roles",
          body: parsed[:body],
          model: Amocrm::Models::RoleCreateResponse,
          options: options
        )
      end

      # Get roles list.
      #
      # @overload list(limit: nil, page: nil, with: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::RoleListResponse::RoleListResponse, Amocrm::Models::RoleListResponse::Problem]
      #
      # @see Amocrm::Models::RoleListParams
      def list(params = {})
        parsed, options = Amocrm::RoleListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/roles",
          query: parsed,
          model: Amocrm::Models::RoleListResponse,
          options: options
        )
      end

      # Delete role by id.
      #
      # @overload delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::RoleDeleteByIDResponse::EmptyResponse, Amocrm::Models::RoleDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::RoleDeleteByIDParams
      def delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/roles/%1$s", id],
          model: Amocrm::Models::RoleDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get role by id.
      #
      # @overload get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::RoleGetByIDResponse::Role, Amocrm::Models::RoleGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::RoleGetByIDParams
      def get_by_id(id, params = {})
        parsed, options = Amocrm::RoleGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/roles/%1$s", id],
          query: parsed,
          model: Amocrm::Models::RoleGetByIDResponse,
          options: options
        )
      end

      # Update role by id.
      #
      # @overload update_by_id(id, name: nil, request_id: nil, rights: nil, request_options: {})
      #
      # @param id [Integer]
      # @param name [String]
      # @param request_id [String]
      # @param rights [Amocrm::Models::RoleUpdateByIDParams::Rights, nil]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::RoleUpdateByIDResponse::Role, Amocrm::Models::RoleUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::RoleUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::RoleUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/roles/%1$s", id],
          body: parsed,
          model: Amocrm::Models::RoleUpdateByIDResponse,
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
