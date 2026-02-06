# typed: strong

module Amocrm
  module Models
    class APIWebhooksListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIWebhooksListParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(Amocrm::APIWebhooksListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Amocrm::APIWebhooksListParams::Filter::OrHash).void }
      attr_writer :filter

      sig do
        params(
          filter: Amocrm::APIWebhooksListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(filter: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            filter: Amocrm::APIWebhooksListParams::Filter,
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
              Amocrm::APIWebhooksListParams::Filter,
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
