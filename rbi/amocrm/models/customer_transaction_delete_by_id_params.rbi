# typed: strong

module Amocrm
  module Models
    class CustomerTransactionDeleteByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::CustomerTransactionDeleteByIDParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :customer_id

      sig do
        params(
          customer_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(customer_id:, request_options: {})
      end

      sig do
        override.returns(
          { customer_id: Integer, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
