# typed: strong

module Amocrm
  module Models
    class EntityLinkListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::EntityLinkListParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(T.anything)) }
      attr_reader :filter

      sig { params(filter: T.anything).void }
      attr_writer :filter

      sig do
        params(
          filter: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(filter: nil, request_options: {})
      end

      sig do
        override.returns(
          { filter: T.anything, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end

      module EntityType
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Amocrm::EntityLinkListParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(:leads, Amocrm::EntityLinkListParams::EntityType::TaggedSymbol)
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::EntityLinkListParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::EntityLinkListParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::EntityLinkListParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Amocrm::EntityLinkListParams::EntityType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
