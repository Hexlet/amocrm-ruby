# typed: strong

module Amocrm
  module Resources
    class Users
      # Create users (batch).
      sig do
        params(
          body: T::Array[Amocrm::UserCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::UserCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Get users list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::UserListResponse::Variants)
      end
      def list(limit: nil, page: nil, with: nil, request_options: {})
      end

      # Get user by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::UserGetByIDResponse::Variants)
      end
      def get_by_id(id, with: nil, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
