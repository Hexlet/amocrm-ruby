# typed: strong

module Amocrm
  module Models
    module APICatalogsCreateResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse,
            Amocrm::Models::APICatalogsCreateResponse::Problem
          )
        end

      class CatalogCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::OrHash
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
              Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded,
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
                Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog
                ]
              )
            )
          end
          attr_reader :catalogs

          sig do
            params(
              catalogs:
                T::Array[
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::OrHash
                ]
            ).void
          end
          attr_writer :catalogs

          sig do
            params(
              catalogs:
                T::Array[
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(catalogs: nil)
          end

          sig do
            override.returns(
              {
                catalogs:
                  T::Array[
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog
                  ]
              }
            )
          end
          def to_hash
          end

          class Catalog < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(T.anything)) }
            attr_reader :_links

            sig { params(_links: T.anything).void }
            attr_writer :_links

            sig { returns(T.nilable(Integer)) }
            attr_reader :account_id

            sig { params(account_id: Integer).void }
            attr_writer :account_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_add_elements

            sig { params(can_add_elements: T::Boolean).void }
            attr_writer :can_add_elements

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_be_deleted

            sig { params(can_be_deleted: T::Boolean).void }
            attr_writer :can_be_deleted

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_link_multiple

            sig { params(can_link_multiple: T::Boolean).void }
            attr_writer :can_link_multiple

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_show_in_cards

            sig { params(can_show_in_cards: T::Boolean).void }
            attr_writer :can_show_in_cards

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_by

            sig { params(created_by: Integer).void }
            attr_writer :created_by

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig do
              returns(
                T.nilable(
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::SDKWidgetCode::Variants
                )
              )
            end
            attr_accessor :sdk_widget_code

            sig { returns(T.nilable(Integer)) }
            attr_reader :sort

            sig { params(sort: Integer).void }
            attr_writer :sort

            sig do
              returns(
                T.nilable(
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::Variants
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  T.any(
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::OrSymbol,
                    String
                  )
              ).void
            end
            attr_writer :type

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_by

            sig { params(updated_by: Integer).void }
            attr_writer :updated_by

            sig do
              params(
                id: Integer,
                _links: T.anything,
                account_id: Integer,
                can_add_elements: T::Boolean,
                can_be_deleted: T::Boolean,
                can_link_multiple: T::Boolean,
                can_show_in_cards: T::Boolean,
                created_at: Integer,
                created_by: Integer,
                name: String,
                request_id: String,
                sdk_widget_code:
                  T.nilable(
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::SDKWidgetCode::Variants
                  ),
                sort: Integer,
                type:
                  T.any(
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::OrSymbol,
                    String
                  ),
                updated_at: Integer,
                updated_by: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _links: nil,
              account_id: nil,
              can_add_elements: nil,
              can_be_deleted: nil,
              can_link_multiple: nil,
              can_show_in_cards: nil,
              created_at: nil,
              created_by: nil,
              name: nil,
              request_id: nil,
              sdk_widget_code: nil,
              sort: nil,
              type: nil,
              updated_at: nil,
              updated_by: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _links: T.anything,
                  account_id: Integer,
                  can_add_elements: T::Boolean,
                  can_be_deleted: T::Boolean,
                  can_link_multiple: T::Boolean,
                  can_show_in_cards: T::Boolean,
                  created_at: Integer,
                  created_by: Integer,
                  name: String,
                  request_id: String,
                  sdk_widget_code:
                    T.nilable(
                      Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::SDKWidgetCode::Variants
                    ),
                  sort: Integer,
                  type:
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::Variants,
                  updated_at: Integer,
                  updated_by: Integer
                }
              )
            end
            def to_hash
            end

            module SDKWidgetCode
              extend Amocrm::Internal::Type::Union

              Variants = T.type_alias { T.any(String, Integer) }

              sig do
                override.returns(
                  T::Array[
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::SDKWidgetCode::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            module Type
              extend Amocrm::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::TaggedSymbol,
                    String
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::Variants
                  ]
                )
              end
              def self.variants
              end

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REGULAR =
                T.let(
                  :regular,
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::TaggedSymbol
                )
              INVOICES =
                T.let(
                  :invoices,
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::TaggedSymbol
                )
              PRODUCTS =
                T.let(
                  :products,
                  Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::TaggedSymbol
                )
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICatalogsCreateResponse::Problem,
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
          T::Array[Amocrm::Models::APICatalogsCreateResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
