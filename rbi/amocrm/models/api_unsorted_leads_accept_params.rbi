# typed: strong

module Amocrm
  module Models
    class APIUnsortedLeadsAcceptParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIUnsortedLeadsAcceptParams, Amocrm::Internal::AnyHash)
        end

      # Status id for the created lead
      sig { returns(T.nilable(Integer)) }
      attr_reader :status_id

      sig { params(status_id: Integer).void }
      attr_writer :status_id

      # User id on whose behalf the item is accepted
      sig { returns(T.nilable(Integer)) }
      attr_reader :user_id

      sig { params(user_id: Integer).void }
      attr_writer :user_id

      sig do
        params(
          status_id: Integer,
          user_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status id for the created lead
        status_id: nil,
        # User id on whose behalf the item is accepted
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status_id: Integer,
            user_id: Integer,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
