# frozen_string_literal: true

module Amocrm
  module Resources
    class CustomerStatuses
      # Create statuses.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CustomerStatusCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerStatusCreateResponse::CustomerStatusCreateResponse, Amocrm::Models::CustomerStatusCreateResponse::Problem]
      #
      # @see Amocrm::Models::CustomerStatusCreateParams
      def create(params)
        parsed, options = Amocrm::CustomerStatusCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers/statuses",
          body: parsed[:body],
          model: Amocrm::Models::CustomerStatusCreateResponse,
          options: options
        )
      end

      # Get statuses list.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerStatusListResponse::CustomerStatusListResponse, Amocrm::Models::CustomerStatusListResponse::Problem]
      #
      # @see Amocrm::Models::CustomerStatusListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/customers/statuses",
          model: Amocrm::Models::CustomerStatusListResponse,
          options: params[:request_options]
        )
      end

      # Delete a status by id.
      #
      # @overload delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomerStatusDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerStatusDeleteByIDParams
      def delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/customers/statuses/%1$s", id],
          model: Amocrm::Models::CustomerStatusDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get status by id.
      #
      # @overload get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerStatusGetByIDResponse::CustomerStatus, Amocrm::Models::CustomerStatusGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerStatusGetByIDParams
      def get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/customers/statuses/%1$s", id],
          model: Amocrm::Models::CustomerStatusGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Update a status by id.
      #
      # @overload update_by_id(id, color: nil, name: nil, sort: nil, request_options: {})
      #
      # @param id [Integer]
      # @param color [String]
      # @param name [String]
      # @param sort [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomerStatusUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerStatusUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::CustomerStatusUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/statuses/%1$s", id],
          body: parsed,
          model: Amocrm::Models::CustomerStatusUpdateByIDResponse,
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
