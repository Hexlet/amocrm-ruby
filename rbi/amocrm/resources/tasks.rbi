# typed: strong

module Amocrm
  module Resources
    class Tasks
      # Create tasks.
      sig do
        params(
          body: T::Array[Amocrm::TaskCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TaskCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Update tasks (batch).
      sig do
        params(
          body: T::Array[Amocrm::TaskUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TaskUpdateResponse::Variants)
      end
      def update(body:, request_options: {})
      end

      # Get a list of tasks (pagination, sorting, filtering).
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::TaskListParams::Query::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TaskListResponse::Variants)
      end
      def list(
        # Filtering parameters
        filter: nil,
        # Pagination limit
        limit: nil,
        # Sorting, e.g. order[updated_at]=asc
        order: nil,
        # Pagination page
        page: nil,
        # Search by query string or id
        query: nil,
        request_options: {}
      )
      end

      # Get a task by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TaskGetByIDResponse::Variants)
      end
      def get_by_id(id, request_options: {})
      end

      # Update a task by id.
      sig do
        params(
          id: Integer,
          complete_till: Integer,
          entity_id: Integer,
          entity_type: String,
          is_completed: T::Boolean,
          responsible_user_id: Integer,
          result: Amocrm::TaskUpdateByIDParams::Result::OrHash,
          task_type_id: Integer,
          text: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TaskUpdateByIDResponse::Variants)
      end
      def update_by_id(
        id,
        complete_till: nil,
        entity_id: nil,
        entity_type: nil,
        is_completed: nil,
        responsible_user_id: nil,
        result: nil,
        task_type_id: nil,
        text: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
