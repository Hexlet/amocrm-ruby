# typed: strong

module Amocrm
  module Models
    class WidgetUninstallParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::WidgetUninstallParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :widget_code

      sig do
        params(
          widget_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(widget_code:, request_options: {})
      end

      sig do
        override.returns(
          { widget_code: String, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
