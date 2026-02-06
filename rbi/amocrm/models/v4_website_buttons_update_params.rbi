# typed: strong

module Amocrm
  module Models
    class V4WebsiteButtonsUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4WebsiteButtonsUpdateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Amocrm::V4WebsiteButtonsUpdateParams::TrustedWebsites) }
      attr_reader :trusted_websites

      sig do
        params(
          trusted_websites:
            Amocrm::V4WebsiteButtonsUpdateParams::TrustedWebsites::OrHash
        ).void
      end
      attr_writer :trusted_websites

      sig do
        params(
          trusted_websites:
            Amocrm::V4WebsiteButtonsUpdateParams::TrustedWebsites::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(trusted_websites:, request_options: {})
      end

      sig do
        override.returns(
          {
            trusted_websites:
              Amocrm::V4WebsiteButtonsUpdateParams::TrustedWebsites,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class TrustedWebsites < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::V4WebsiteButtonsUpdateParams::TrustedWebsites,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :add

        sig { params(add: T::Array[String]).returns(T.attached_class) }
        def self.new(add:)
        end

        sig { override.returns({ add: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
