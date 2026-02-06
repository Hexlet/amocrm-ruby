# typed: strong

module Amocrm
  module Models
    class APISalesbotRunParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APISalesbotRunParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::APISalesbotRunParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::APISalesbotRunParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::APISalesbotRunParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::APISalesbotRunParams::Body, Amocrm::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :bot_id

        sig { returns(Integer) }
        attr_accessor :entity_id

        sig { returns(Integer) }
        attr_accessor :entity_type

        sig do
          params(
            bot_id: Integer,
            entity_id: Integer,
            entity_type: Integer
          ).returns(T.attached_class)
        end
        def self.new(bot_id:, entity_id:, entity_type:)
        end

        sig do
          override.returns(
            { bot_id: Integer, entity_id: Integer, entity_type: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
