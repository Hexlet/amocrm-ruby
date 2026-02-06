# typed: strong

module Amocrm
  module Models
    class APITagsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APITagsCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::APITagsCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::APITagsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::APITagsCreateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      module EntityType
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Amocrm::APITagsCreateParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(:leads, Amocrm::APITagsCreateParams::EntityType::TaggedSymbol)
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::APITagsCreateParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::APITagsCreateParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::APITagsCreateParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Amocrm::APITagsCreateParams::EntityType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::APITagsCreateParams::Body, Amocrm::Internal::AnyHash)
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
