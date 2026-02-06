# typed: strong

module Amocrm
  module Models
    class V4EntityLinksListByEntityParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4EntityLinksListByEntityParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(Amocrm::V4EntityLinksListByEntityParams::EntityType::OrSymbol)
      end
      attr_accessor :entity_type

      sig do
        params(
          entity_type:
            Amocrm::V4EntityLinksListByEntityParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::V4EntityLinksListByEntityParams::EntityType::OrSymbol,
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
            T.all(Symbol, Amocrm::V4EntityLinksListByEntityParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::V4EntityLinksListByEntityParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::V4EntityLinksListByEntityParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::V4EntityLinksListByEntityParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::V4EntityLinksListByEntityParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::V4EntityLinksListByEntityParams::EntityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
