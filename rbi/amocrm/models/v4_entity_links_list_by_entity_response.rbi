# typed: strong

module Amocrm
  module Models
    module V4EntityLinksListByEntityResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse,
            Amocrm::Models::V4EntityLinksListByEntityResponse::Problem
          )
        end

      class EntityLinksResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig do
          params(
            _embedded:
              Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded,
              _links: T.anything
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link
                ]
              )
            )
          end
          attr_reader :links

          sig do
            params(
              links:
                T::Array[
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::OrHash
                ]
            ).void
          end
          attr_writer :links

          sig do
            params(
              links:
                T::Array[
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(links: nil)
          end

          sig do
            override.returns(
              {
                links:
                  T::Array[
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link
                  ]
              }
            )
          end
          def to_hash
          end

          class Link < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link,
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
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::Variants
                )
              )
            end
            attr_reader :entity_type

            sig do
              params(
                entity_type:
                  T.any(
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::OrSymbol,
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
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::Variants
                )
              )
            end
            attr_reader :to_entity_type

            sig do
              params(
                to_entity_type:
                  T.any(
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::OrSymbol,
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
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::OrSymbol,
                    String
                  ),
                metadata: T.anything,
                to_entity_id: Integer,
                to_entity_type:
                  T.any(
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::OrSymbol,
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
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::Variants,
                  metadata: T.anything,
                  to_entity_id: Integer,
                  to_entity_type:
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::Variants
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
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::TaggedSymbol,
                    String
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::Variants
                  ]
                )
              end
              def self.variants
              end

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LEADS =
                T.let(
                  :leads,
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::TaggedSymbol
                )
              CONTACTS =
                T.let(
                  :contacts,
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::TaggedSymbol
                )
              COMPANIES =
                T.let(
                  :companies,
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::TaggedSymbol
                )
              CUSTOMERS =
                T.let(
                  :customers,
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::TaggedSymbol
                )
            end

            module ToEntityType
              extend Amocrm::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::TaggedSymbol,
                    String
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::Variants
                  ]
                )
              end
              def self.variants
              end

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LEADS =
                T.let(
                  :leads,
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::TaggedSymbol
                )
              CONTACTS =
                T.let(
                  :contacts,
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::TaggedSymbol
                )
              COMPANIES =
                T.let(
                  :companies,
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::TaggedSymbol
                )
              CUSTOMERS =
                T.let(
                  :customers,
                  Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::TaggedSymbol
                )
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4EntityLinksListByEntityResponse::Problem,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :detail

        sig { params(detail: String).void }
        attr_writer :detail

        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            detail: String,
            status: Integer,
            title: String,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(detail: nil, status: nil, title: nil, type: nil)
        end

        sig do
          override.returns(
            { detail: String, status: Integer, title: String, type: String }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Amocrm::Models::V4EntityLinksListByEntityResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
