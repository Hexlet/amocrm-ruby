# typed: strong

module Amocrm
  module Models
    class WidgetInstallParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::WidgetInstallParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :widget_code

      sig { returns(T.anything) }
      attr_accessor :body

      sig do
        params(
          widget_code: String,
          body: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(widget_code:, body:, request_options: {})
      end

      sig do
        override.returns(
          {
            widget_code: String,
            body: T.anything,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
