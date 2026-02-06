# typed: strong

module Amocrm
  module Models
    class V4WebsiteButtonsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4WebsiteButtonsCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :pipeline_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_used_in_app

      sig { params(is_used_in_app: T::Boolean).void }
      attr_writer :is_used_in_app

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :trusted_websites

      sig { params(trusted_websites: T::Array[String]).void }
      attr_writer :trusted_websites

      sig do
        params(
          pipeline_id: Integer,
          is_used_in_app: T::Boolean,
          trusted_websites: T::Array[String],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        pipeline_id:,
        is_used_in_app: nil,
        trusted_websites: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            pipeline_id: Integer,
            is_used_in_app: T::Boolean,
            trusted_websites: T::Array[String],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
