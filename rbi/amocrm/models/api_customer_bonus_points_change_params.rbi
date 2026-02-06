# typed: strong

module Amocrm
  module Models
    class APICustomerBonusPointsChangeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::APICustomerBonusPointsChangeParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :earn

      sig { returns(Integer) }
      attr_accessor :redeem

      sig do
        params(
          earn: Integer,
          redeem: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(earn:, redeem:, request_options: {})
      end

      sig do
        override.returns(
          {
            earn: Integer,
            redeem: Integer,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
