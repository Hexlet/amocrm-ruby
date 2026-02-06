# typed: strong

module Amocrm
  module Resources
    class Sources
      # Create sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::SourceCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::SourceCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Update sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::SourceUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::SourceUpdateResponse::Variants)
      end
      def update(body:, request_options: {})
      end

      # Get sources list.
      sig do
        params(
          filter: Amocrm::SourceListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::SourceListResponse::Variants)
      end
      def list(filter: nil, request_options: {})
      end

      # Delete sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::SourceDeleteParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::SourceDeleteResponse::Variants)
      end
      def delete(body:, request_options: {})
      end

      # Delete source by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::SourceDeleteByIDResponse::Variants)
      end
      def delete_by_id(id, request_options: {})
      end

      # Get source by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::SourceGetByIDResponse::Variants)
      end
      def get_by_id(id, request_options: {})
      end

      # Update source by id.
      sig do
        params(
          id: Integer,
          default: T::Boolean,
          external_id: String,
          name: String,
          origin_code: T.nilable(String),
          pipeline_id: T.nilable(Integer),
          request_id: String,
          services: Amocrm::SourceUpdateByIDParams::Services::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::SourceUpdateByIDResponse::Variants)
      end
      def update_by_id(
        id,
        default: nil,
        external_id: nil,
        name: nil,
        origin_code: nil,
        pipeline_id: nil,
        request_id: nil,
        services: nil,
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
