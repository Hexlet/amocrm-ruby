# typed: strong

module Amocrm
  module Resources
    class User
      # This can only be done by the logged in user.
      sig do
        params(
          id: Integer,
          email: String,
          first_name: String,
          last_name: String,
          password: String,
          phone: String,
          username: String,
          user_status: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::UserAPI)
      end
      def create(
        id: nil,
        email: nil,
        first_name: nil,
        last_name: nil,
        password: nil,
        phone: nil,
        username: nil,
        # User Status
        user_status: nil,
        request_options: {}
      )
      end

      # Get user by user name
      sig do
        params(
          username: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::UserAPI)
      end
      def retrieve(
        # The name that needs to be fetched. Use user1 for testing.
        username,
        request_options: {}
      )
      end

      # This can only be done by the logged in user.
      sig do
        params(
          existing_username: String,
          id: Integer,
          email: String,
          first_name: String,
          last_name: String,
          password: String,
          phone: String,
          username: String,
          user_status: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).void
      end
      def update(
        # The username that needs to be replaced
        existing_username,
        id: nil,
        email: nil,
        first_name: nil,
        last_name: nil,
        password: nil,
        phone: nil,
        username: nil,
        # User Status
        user_status: nil,
        request_options: {}
      )
      end

      # This can only be done by the logged in user.
      sig do
        params(
          username: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The name that needs to be deleted
        username,
        request_options: {}
      )
      end

      # Creates list of users with given input array
      sig do
        params(
          body: T::Array[Amocrm::UserAPI::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::UserAPI)
      end
      def create_with_list(body: nil, request_options: {})
      end

      # Logs user into the system
      sig do
        params(
          password: String,
          username: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(String)
      end
      def login(
        # The password for login in clear text
        password: nil,
        # The user name for login
        username: nil,
        request_options: {}
      )
      end

      # Logs out current logged in user session
      sig { params(request_options: Amocrm::RequestOptions::OrHash).void }
      def logout(request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
