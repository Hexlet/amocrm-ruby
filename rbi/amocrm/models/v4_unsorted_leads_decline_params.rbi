# typed: strong

module Amocrm
  module Models
    class V4UnsortedLeadsDeclineParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4UnsortedLeadsDeclineParams, Amocrm::Internal::AnyHash)
        end

      # User id on whose behalf the item is declined
      sig { returns(T.nilable(Integer)) }
      attr_reader :user_id

      sig { params(user_id: Integer).void }
      attr_writer :user_id

      sig do
        params(
          user_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # User id on whose behalf the item is declined
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { user_id: Integer, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
