# typed: strong

module Amocrm
  module Models
    class V4TagsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4TagsCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::V4TagsCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4TagsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4TagsCreateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      module EntityType
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Amocrm::V4TagsCreateParams::EntityType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(:leads, Amocrm::V4TagsCreateParams::EntityType::TaggedSymbol)
        CONTACTS =
          T.let(:contacts, Amocrm::V4TagsCreateParams::EntityType::TaggedSymbol)
        COMPANIES =
          T.let(
            :companies,
            Amocrm::V4TagsCreateParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::V4TagsCreateParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Amocrm::V4TagsCreateParams::EntityType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::V4TagsCreateParams::Body, Amocrm::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :color

        sig { params(color: String).void }
        attr_writer :color

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig do
          params(name: String, color: String, request_id: String).returns(
            T.attached_class
          )
        end
        def self.new(name:, color: nil, request_id: nil)
        end

        sig do
          override.returns({ name: String, color: String, request_id: String })
        end
        def to_hash
        end
      end
    end
  end
end
