# typed: strong

module Amocrm
  module Models
    class EntityLinkLinkByEntityParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::EntityLinkLinkByEntityParams, Amocrm::Internal::AnyHash)
        end

      sig do
        returns(Amocrm::EntityLinkLinkByEntityParams::EntityType::OrSymbol)
      end
      attr_accessor :entity_type

      sig { returns(T::Array[Amocrm::EntityLinkLinkByEntityParams::Body]) }
      attr_accessor :body

      sig do
        params(
          entity_type:
            Amocrm::EntityLinkLinkByEntityParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityLinkLinkByEntityParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(entity_type:, body:, request_options: {})
      end

      sig do
        override.returns(
          {
            entity_type:
              Amocrm::EntityLinkLinkByEntityParams::EntityType::OrSymbol,
            body: T::Array[Amocrm::EntityLinkLinkByEntityParams::Body],
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
            T.all(Symbol, Amocrm::EntityLinkLinkByEntityParams::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEADS =
          T.let(
            :leads,
            Amocrm::EntityLinkLinkByEntityParams::EntityType::TaggedSymbol
          )
        CONTACTS =
          T.let(
            :contacts,
            Amocrm::EntityLinkLinkByEntityParams::EntityType::TaggedSymbol
          )
        COMPANIES =
          T.let(
            :companies,
            Amocrm::EntityLinkLinkByEntityParams::EntityType::TaggedSymbol
          )
        CUSTOMERS =
          T.let(
            :customers,
            Amocrm::EntityLinkLinkByEntityParams::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::EntityLinkLinkByEntityParams::EntityType::TaggedSymbol
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
              Amocrm::EntityLinkLinkByEntityParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :entity_id

        sig { params(entity_id: Integer).void }
        attr_writer :entity_id

        sig do
          returns(
            T.nilable(
              T.any(
                Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::OrSymbol,
                String
              )
            )
          )
        end
        attr_reader :entity_type

        sig do
          params(
            entity_type:
              T.any(
                Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::OrSymbol,
                String
              )
          ).void
        end
        attr_writer :entity_type

        sig { returns(T.nilable(T.anything)) }
        attr_reader :metadata

        sig { params(metadata: T.anything).void }
        attr_writer :metadata

        sig { returns(T.nilable(Integer)) }
        attr_reader :to_entity_id

        sig { params(to_entity_id: Integer).void }
        attr_writer :to_entity_id

        sig do
          returns(
            T.nilable(
              T.any(
                Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::OrSymbol,
                String
              )
            )
          )
        end
        attr_reader :to_entity_type

        sig do
          params(
            to_entity_type:
              T.any(
                Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::OrSymbol,
                String
              )
          ).void
        end
        attr_writer :to_entity_type

        sig do
          params(
            entity_id: Integer,
            entity_type:
              T.any(
                Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::OrSymbol,
                String
              ),
            metadata: T.anything,
            to_entity_id: Integer,
            to_entity_type:
              T.any(
                Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::OrSymbol,
                String
              )
          ).returns(T.attached_class)
        end
        def self.new(
          entity_id: nil,
          entity_type: nil,
          metadata: nil,
          to_entity_id: nil,
          to_entity_type: nil
        )
        end

        sig do
          override.returns(
            {
              entity_id: Integer,
              entity_type:
                T.any(
                  Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::OrSymbol,
                  String
                ),
              metadata: T.anything,
              to_entity_id: Integer,
              to_entity_type:
                T.any(
                  Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::OrSymbol,
                  String
                )
            }
          )
        end
        def to_hash
        end

        module EntityType
          extend Amocrm::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::TaggedSymbol,
                String
              )
            end

          sig do
            override.returns(
              T::Array[
                Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Amocrm::EntityLinkLinkByEntityParams::Body::EntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEADS =
            T.let(
              :leads,
              Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :contacts,
              Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::TaggedSymbol
            )
          COMPANIES =
            T.let(
              :companies,
              Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::TaggedSymbol
            )
          CUSTOMERS =
            T.let(
              :customers,
              Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::TaggedSymbol
            )
        end

        module ToEntityType
          extend Amocrm::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::TaggedSymbol,
                String
              )
            end

          sig do
            override.returns(
              T::Array[
                Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEADS =
            T.let(
              :leads,
              Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :contacts,
              Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::TaggedSymbol
            )
          COMPANIES =
            T.let(
              :companies,
              Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::TaggedSymbol
            )
          CUSTOMERS =
            T.let(
              :customers,
              Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::TaggedSymbol
            )
        end
      end
    end
  end
end
