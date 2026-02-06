# typed: strong

module Amocrm
  module Models
    class CompanyGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CompanyGetByIDParams, Amocrm::Internal::AnyHash)
        end

      # Expand related entities; comma-separated values
      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { with: String, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
