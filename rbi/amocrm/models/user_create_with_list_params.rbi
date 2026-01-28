# typed: strong

module Amocrm
  module Models
    class UserCreateWithListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::UserCreateWithListParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Amocrm::UserAPI])) }
      attr_reader :body

      sig { params(body: T::Array[Amocrm::UserAPI::OrHash]).void }
      attr_writer :body

      sig do
        params(
          body: T::Array[Amocrm::UserAPI::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::UserAPI],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
