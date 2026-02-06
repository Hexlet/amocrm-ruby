# frozen_string_literal: true

module Amocrm
  module Resources
    class Users
      # Create users (batch).
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::UserCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::UserCreateResponse::UserCreateResponse, Amocrm::Models::UserCreateResponse::Problem]
      #
      # @see Amocrm::Models::UserCreateParams
      def create(params)
        parsed, options = Amocrm::UserCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/users",
          body: parsed[:body],
          model: Amocrm::Models::UserCreateResponse,
          options: options
        )
      end

      # Get users list.
      #
      # @overload list(limit: nil, page: nil, with: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::UserListResponse::UserListResponse, Amocrm::Models::UserListResponse::Problem]
      #
      # @see Amocrm::Models::UserListParams
      def list(params = {})
        parsed, options = Amocrm::UserListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/users",
          query: parsed,
          model: Amocrm::Models::UserListResponse,
          options: options
        )
      end

      # Get user by id.
      #
      # @overload get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::UserGetByIDResponse::User, Amocrm::Models::UserGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::UserGetByIDParams
      def get_by_id(id, params = {})
        parsed, options = Amocrm::UserGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/users/%1$s", id],
          query: parsed,
          model: Amocrm::Models::UserGetByIDResponse,
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
