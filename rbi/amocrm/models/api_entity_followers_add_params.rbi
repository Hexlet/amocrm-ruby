# typed: strong

module Amocrm
  module Models
    class APIEntityFollowersAddParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIEntityFollowersAddParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Amocrm::APIEntityFollowersAddParams::EntityType::OrSymbol) }
      attr_accessor :entity_type

      sig { returns(T::Array[Amocrm::APIEntityFollowersAddParams::Body]) }
      attr_accessor :body

      sig do
        params(
          entity_type:
            Amocrm::APIEntityFollowersAddParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::APIEntityFollowersAddParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, body:, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::APIEntityFollowersAddParams::EntityType::OrSymbol,
            body: T::Array[Amocrm::APIEntityFollowersAddParams::Body],
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
            T.all(Symbol, Amocrm::APIEntityFollowersAddParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::APIEntityFollowersAddParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::APIEntityFollowersAddParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::APIEntityFollowersAddParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::APIEntityFollowersAddParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::APIEntityFollowersAddParams::EntityType::TaggedSymbol
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
              Amocrm::APIEntityFollowersAddParams::Body,
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
