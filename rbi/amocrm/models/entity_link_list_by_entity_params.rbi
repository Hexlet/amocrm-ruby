# typed: strong

module Amocrm
  module Models
    class EntityLinkListByEntityParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::EntityLinkListByEntityParams, Amocrm::Internal::AnyHash)
        end

      sig do
        returns(Amocrm::EntityLinkListByEntityParams::EntityType::OrSymbol)
      end
      attr_accessor :entity_type

      sig do
        params(
          entity_type:
            Amocrm::EntityLinkListByEntityParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::EntityLinkListByEntityParams::EntityType::OrSymbol,
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
            T.all(Symbol, Amocrm::EntityLinkListByEntityParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::EntityLinkListByEntityParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::EntityLinkListByEntityParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::EntityLinkListByEntityParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::EntityLinkListByEntityParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::EntityLinkListByEntityParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
