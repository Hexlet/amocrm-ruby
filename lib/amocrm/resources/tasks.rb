# frozen_string_literal: true

module Amocrm
  module Resources
    class Tasks
      # Create tasks.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::TaskCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TaskCreateResponse::TaskCreateResponse, Amocrm::Models::TaskCreateResponse::Problem]
      #
      # @see Amocrm::Models::TaskCreateParams
      def create(params)
        parsed, options = Amocrm::TaskCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/tasks",
          body: parsed[:body],
          model: Amocrm::Models::TaskCreateResponse,
          options: options
        )
      end

      # Update tasks (batch).
      #
      # @overload update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::TaskUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TaskUpdateResponse::TaskUpdateResponse, Amocrm::Models::TaskUpdateResponse::Problem]
      #
      # @see Amocrm::Models::TaskUpdateParams
      def update(params)
        parsed, options = Amocrm::TaskUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/tasks",
          body: parsed[:body],
          model: Amocrm::Models::TaskUpdateResponse,
          options: options
        )
      end

      # Get a list of tasks (pagination, sorting, filtering).
      #
      # @overload list(filter: nil, limit: nil, order: nil, page: nil, query: nil, request_options: {})
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
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TaskListResponse::TaskListResponse, Amocrm::Models::TaskListResponse::Problem]
      #
      # @see Amocrm::Models::TaskListParams
      def list(params = {})
        parsed, options = Amocrm::TaskListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/tasks",
          query: parsed,
          model: Amocrm::Models::TaskListResponse,
          options: options
        )
      end

      # Get a task by id.
      #
      # @overload get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TaskGetByIDResponse::Task, Amocrm::Models::TaskGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::TaskGetByIDParams
      def get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/tasks/%1$s", id],
          model: Amocrm::Models::TaskGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Update a task by id.
      #
      # @overload update_by_id(id, complete_till: nil, entity_id: nil, entity_type: nil, is_completed: nil, responsible_user_id: nil, result: nil, task_type_id: nil, text: nil, request_options: {})
      #
      # @param id [Integer]
      # @param complete_till [Integer]
      # @param entity_id [Integer]
      # @param entity_type [String]
      # @param is_completed [Boolean]
      # @param responsible_user_id [Integer]
      # @param result [Amocrm::Models::TaskUpdateByIDParams::Result]
      # @param task_type_id [Integer]
      # @param text [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TaskUpdateByIDResponse::TaskUpdateResponse, Amocrm::Models::TaskUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::TaskUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::TaskUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/tasks/%1$s", id],
          body: parsed,
          model: Amocrm::Models::TaskUpdateByIDResponse,
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
