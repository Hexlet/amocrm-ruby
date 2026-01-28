# typed: strong

module Amocrm
  module Models
    class UserAPI < Amocrm::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Amocrm::UserAPI, Amocrm::Internal::AnyHash) }

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # User Status
      sig { returns(T.nilable(Integer)) }
      attr_reader :user_status

      sig { params(user_status: Integer).void }
      attr_writer :user_status

      sig do
        params(
          id: Integer,
          email: String,
          first_name: String,
          last_name: String,
          password: String,
          phone: String,
          username: String,
          user_status: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        email: nil,
        first_name: nil,
        last_name: nil,
        password: nil,
        phone: nil,
        username: nil,
        # User Status
        user_status: nil
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            email: String,
            first_name: String,
            last_name: String,
            password: String,
            phone: String,
            username: String,
            user_status: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
