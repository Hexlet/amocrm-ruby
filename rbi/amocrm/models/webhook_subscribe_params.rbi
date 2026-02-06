# typed: strong

module Amocrm
  module Models
    class WebhookSubscribeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::WebhookSubscribeParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :destination

      sig { returns(T::Array[String]) }
      attr_accessor :settings

      sig { returns(T.nilable(Integer)) }
      attr_reader :sort

      sig { params(sort: Integer).void }
      attr_writer :sort

      sig do
        params(
          destination: String,
          settings: T::Array[String],
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(destination:, settings:, sort: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            destination: String,
            settings: T::Array[String],
            sort: Integer,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
