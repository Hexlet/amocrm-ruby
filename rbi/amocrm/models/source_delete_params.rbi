# typed: strong

module Amocrm
  module Models
    class SourceDeleteParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::SourceDeleteParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::SourceDeleteParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::SourceDeleteParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::SourceDeleteParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::SourceDeleteParams::Body, Amocrm::Internal::AnyHash)
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
