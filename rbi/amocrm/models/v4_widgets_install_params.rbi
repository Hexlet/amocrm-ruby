# typed: strong

module Amocrm
  module Models
    class V4WidgetsInstallParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4WidgetsInstallParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.anything) }
      attr_accessor :body

      sig do
        params(
          body: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          { body: T.anything, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
