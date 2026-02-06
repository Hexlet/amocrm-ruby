# typed: strong

module Amocrm
  module Models
    class V4SourcesDeleteParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4SourcesDeleteParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::V4SourcesDeleteParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4SourcesDeleteParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4SourcesDeleteParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::V4SourcesDeleteParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { params(id: Integer).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({ id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
