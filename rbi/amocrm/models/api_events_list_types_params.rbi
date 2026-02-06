# typed: strong

module Amocrm
  module Models
    class APIEventsListTypesParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIEventsListTypesParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :language_code

      sig { params(language_code: String).void }
      attr_writer :language_code

      sig do
        params(
          language_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(language_code: nil, request_options: {})
      end

      sig do
        override.returns(
          { language_code: String, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
