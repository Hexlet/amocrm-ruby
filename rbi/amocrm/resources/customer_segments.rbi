# typed: strong

module Amocrm
  module Resources
    class CustomerSegments
      # Create segments.
      sig do
        params(
          body: T::Array[Amocrm::CustomerSegmentCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerSegmentCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Get segments list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::CustomerSegmentListResponse::Variants
        )
      end
      def list(request_options: {})
      end

      # Delete a segment by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerSegmentDeleteByIDResponse::Variants)
      end
      def delete_by_id(id, request_options: {})
      end

      # Get segment by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerSegmentGetByIDResponse::Variants)
      end
      def get_by_id(id, request_options: {})
      end

      # Update a segment by id.
      sig do
        params(
          id: Integer,
          color: String,
          custom_fields_values:
            T::Array[
              Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerSegmentUpdateByIDResponse::Variants)
      end
      def update_by_id(
        id,
        color: nil,
        custom_fields_values: nil,
        name: nil,
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
