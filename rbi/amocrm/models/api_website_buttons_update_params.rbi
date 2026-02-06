# typed: strong

module Amocrm
  module Models
    class APIWebsiteButtonsUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::APIWebsiteButtonsUpdateParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(Amocrm::APIWebsiteButtonsUpdateParams::TrustedWebsites) }
      attr_reader :trusted_websites

      sig do
        params(
          trusted_websites:
            Amocrm::APIWebsiteButtonsUpdateParams::TrustedWebsites::OrHash
        ).void
      end
      attr_writer :trusted_websites

      sig do
        params(
          trusted_websites:
            Amocrm::APIWebsiteButtonsUpdateParams::TrustedWebsites::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(trusted_websites:, request_options: {})
      end

      sig do
        override.returns(
          {
            trusted_websites:
              Amocrm::APIWebsiteButtonsUpdateParams::TrustedWebsites,
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
              Amocrm::APIWebsiteButtonsUpdateParams::TrustedWebsites,
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
