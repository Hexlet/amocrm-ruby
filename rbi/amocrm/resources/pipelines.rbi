# typed: strong

module Amocrm
  module Resources
    class Pipelines
      # Create pipelines.
      sig do
        params(
          body: T::Array[Amocrm::PipelineCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Update pipelines (batch).
      sig do
        params(
          body: T::Array[Amocrm::PipelineUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineUpdateResponse::Variants)
      end
      def update(body:, request_options: {})
      end

      # Get pipelines list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::PipelineListResponse::Variants
        )
      end
      def list(request_options: {})
      end

      # Delete pipeline by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineDeleteByIDResponse::Variants)
      end
      def delete_by_id(id, request_options: {})
      end

      # Get pipeline by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineGetByIDResponse::Variants)
      end
      def get_by_id(id, request_options: {})
      end

      # Update pipeline by id.
      sig do
        params(
          id: Integer,
          is_archive: T::Boolean,
          is_main: T::Boolean,
          is_unsorted_on: T::Boolean,
          name: String,
          request_id: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::PipelineUpdateByIDResponse::Variants)
      end
      def update_by_id(
        id,
        is_archive: nil,
        is_main: nil,
        is_unsorted_on: nil,
        name: nil,
        request_id: nil,
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
