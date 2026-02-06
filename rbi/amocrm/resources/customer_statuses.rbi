# typed: strong

module Amocrm
  module Resources
    class CustomerStatuses
      # Create statuses.
      sig do
        params(
          body: T::Array[Amocrm::CustomerStatusCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerStatusCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Get statuses list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::CustomerStatusListResponse::Variants
        )
      end
      def list(request_options: {})
      end

      # Delete a status by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerStatusDeleteByIDResponse::Variants)
      end
      def delete_by_id(id, request_options: {})
      end

      # Get status by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerStatusGetByIDResponse::Variants)
      end
      def get_by_id(id, request_options: {})
      end

      # Update a status by id.
      sig do
        params(
          id: Integer,
          color: String,
          name: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerStatusUpdateByIDResponse::Variants)
      end
      def update_by_id(
        id,
        color: nil,
        name: nil,
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
