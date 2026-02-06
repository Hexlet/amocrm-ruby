# typed: strong

module Amocrm
  module Models
    class V4EntityFollowersRemoveParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4EntityFollowersRemoveParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(Amocrm::V4EntityFollowersRemoveParams::EntityType::OrSymbol)
      end
      attr_accessor :entity_type

      sig { returns(T::Array[Amocrm::V4EntityFollowersRemoveParams::Body]) }
      attr_accessor :body

      sig do
        params(
          entity_type:
            Amocrm::V4EntityFollowersRemoveParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4EntityFollowersRemoveParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, body:, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::V4EntityFollowersRemoveParams::EntityType::OrSymbol,
            body: T::Array[Amocrm::V4EntityFollowersRemoveParams::Body],
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
            T.all(Symbol, Amocrm::V4EntityFollowersRemoveParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::V4EntityFollowersRemoveParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::V4EntityFollowersRemoveParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::V4EntityFollowersRemoveParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::V4EntityFollowersRemoveParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::V4EntityFollowersRemoveParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::V4EntityFollowersRemoveParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :user_id

        sig { params(user_id: Integer).returns(T.attached_class) }
        def self.new(user_id:)
        end

        sig { override.returns({ user_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
