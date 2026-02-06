# typed: strong

module Amocrm
  module Resources
    class PipelineStatuses
      # Create statuses.
      sig do
        params(
          pipeline_id: Integer,
          body: T::Array[Amocrm::PipelineStatusCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineStatusCreateResponse::Variants)
      end
      def create(pipeline_id, body:, request_options: {})
      end

      # Update statuses (batch).
      sig do
        params(
          pipeline_id: Integer,
          body: T::Array[Amocrm::PipelineStatusUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineStatusUpdateResponse::Variants)
      end
      def update(pipeline_id, body:, request_options: {})
      end

      # Get statuses for a pipeline.
      sig do
        params(
          pipeline_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineStatusListResponse::Variants)
      end
      def list(
        pipeline_id,
        # Expand related entities; comma-separated values (e.g. descriptions).
        with: nil,
        request_options: {}
      )
      end

      # Delete status by id.
      sig do
        params(
          id: Integer,
          pipeline_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineStatusDeleteByIDResponse::Variants)
      end
      def delete_by_id(id, pipeline_id:, request_options: {})
      end

      # Get status by id.
      sig do
        params(
          id: Integer,
          pipeline_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineStatusGetByIDResponse::Variants)
      end
      def get_by_id(
        # Path param
        id,
        # Path param
        pipeline_id:,
        # Query param: Expand related entities; comma-separated values (e.g.
        # descriptions).
        with: nil,
        request_options: {}
      )
      end

      # Update status by id.
      sig do
        params(
          id: Integer,
          pipeline_id: Integer,
          color: String,
          descriptions:
            T::Array[
              Amocrm::PipelineStatusUpdateByIDParams::Description::OrHash
            ],
          name: String,
          request_id: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineStatusUpdateByIDResponse::Variants)
      end
      def update_by_id(
        # Path param
        id,
        # Path param
        pipeline_id:,
        # Body param
        color: nil,
        # Body param
        descriptions: nil,
        # Body param
        name: nil,
        # Body param
        request_id: nil,
        # Body param
        sort: nil,
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
