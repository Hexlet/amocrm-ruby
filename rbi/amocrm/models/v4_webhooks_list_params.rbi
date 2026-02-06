# typed: strong

module Amocrm
  module Models
    class V4WebhooksListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4WebhooksListParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(Amocrm::V4WebhooksListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Amocrm::V4WebhooksListParams::Filter::OrHash).void }
      attr_writer :filter

      sig do
        params(
          filter: Amocrm::V4WebhooksListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(filter: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            filter: Amocrm::V4WebhooksListParams::Filter,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::V4WebhooksListParams::Filter,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :destination

        sig { params(destination: String).void }
        attr_writer :destination

        sig { params(destination: String).returns(T.attached_class) }
        def self.new(destination: nil)
        end

        sig { override.returns({ destination: String }) }
        def to_hash
        end
      end
    end
  end
end
