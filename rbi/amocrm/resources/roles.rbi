# typed: strong

module Amocrm
  module Resources
    class Roles
      # Create roles (batch).
      sig do
        params(
          body: T::Array[Amocrm::RoleCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::RoleCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Get roles list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::RoleListResponse::Variants)
      end
      def list(limit: nil, page: nil, with: nil, request_options: {})
      end

      # Delete role by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::RoleDeleteByIDResponse::Variants)
      end
      def delete_by_id(id, request_options: {})
      end

      # Get role by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::RoleGetByIDResponse::Variants)
      end
      def get_by_id(id, with: nil, request_options: {})
      end

      # Update role by id.
      sig do
        params(
          id: Integer,
          name: String,
          request_id: String,
          rights: T.nilable(Amocrm::RoleUpdateByIDParams::Rights::OrHash),
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::RoleUpdateByIDResponse::Variants)
      end
      def update_by_id(
        id,
        name: nil,
        request_id: nil,
        rights: nil,
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
