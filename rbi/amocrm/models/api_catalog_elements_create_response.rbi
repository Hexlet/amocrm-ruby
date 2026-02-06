# typed: strong

module Amocrm
  module Models
    module APICatalogElementsCreateResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse,
            Amocrm::Models::APICatalogElementsCreateResponse::Problem
          )
        end

      class CatalogElementCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::OrHash
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
              Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded,
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
                Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element
                ]
              )
            )
          end
          attr_reader :elements

          sig do
            params(
              elements:
                T::Array[
                  Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::OrHash
                ]
            ).void
          end
          attr_writer :elements

          sig do
            params(
              elements:
                T::Array[
                  Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(elements: nil)
          end

          sig do
            override.returns(
              {
                elements:
                  T::Array[
                    Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element
                  ]
              }
            )
          end
          def to_hash
          end

          class Element < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig do
              returns(
                T.nilable(
                  Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded
                )
              )
            end
            attr_reader :_embedded

            sig do
              params(
                _embedded:
                  Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded::OrHash
              ).void
            end
            attr_writer :_embedded

            sig { returns(T.nilable(T.anything)) }
            attr_reader :_links

            sig { params(_links: T.anything).void }
            attr_writer :_links

            sig { returns(T.nilable(Integer)) }
            attr_reader :account_id

            sig { params(account_id: Integer).void }
            attr_writer :account_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :catalog_id

            sig { params(catalog_id: Integer).void }
            attr_writer :catalog_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_by

            sig { params(created_by: Integer).void }
            attr_writer :created_by

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::CustomFieldsValue
                  ]
                )
              )
            end
            attr_accessor :custom_fields_values

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_link

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_deleted

            sig { params(is_deleted: T::Boolean).void }
            attr_writer :is_deleted

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

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
                _embedded:
                  Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded::OrHash,
                _links: T.anything,
                account_id: Integer,
                catalog_id: Integer,
                created_at: Integer,
                created_by: Integer,
                custom_fields_values:
                  T.nilable(
                    T::Array[
                      Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::CustomFieldsValue::OrHash
                    ]
                  ),
                invoice_link: T.nilable(String),
                is_deleted: T::Boolean,
                name: String,
                request_id: String,
                updated_at: Integer,
                updated_by: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _embedded: nil,
              _links: nil,
              account_id: nil,
              catalog_id: nil,
              created_at: nil,
              created_by: nil,
              custom_fields_values: nil,
              invoice_link: nil,
              is_deleted: nil,
              name: nil,
              request_id: nil,
              updated_at: nil,
              updated_by: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _embedded:
                    Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded,
                  _links: T.anything,
                  account_id: Integer,
                  catalog_id: Integer,
                  created_at: Integer,
                  created_by: Integer,
                  custom_fields_values:
                    T.nilable(
                      T::Array[
                        Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::CustomFieldsValue
                      ]
                    ),
                  invoice_link: T.nilable(String),
                  is_deleted: T::Boolean,
                  name: String,
                  request_id: String,
                  updated_at: Integer,
                  updated_by: Integer
                }
              )
            end
            def to_hash
            end

            class Embedded < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded::Warning
                  )
                )
              end
              attr_reader :warning

              sig do
                params(
                  warning:
                    T.nilable(
                      Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded::Warning::OrHash
                    )
                ).void
              end
              attr_writer :warning

              sig do
                params(
                  warning:
                    T.nilable(
                      Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded::Warning::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(warning: nil)
              end

              sig do
                override.returns(
                  {
                    warning:
                      T.nilable(
                        Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded::Warning
                      )
                  }
                )
              end
              def to_hash
              end

              class Warning < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::Embedded::Warning,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_accessor :message

                sig do
                  params(message: T.nilable(String)).returns(T.attached_class)
                end
                def self.new(message: nil)
                end

                sig { override.returns({ message: T.nilable(String) }) }
                def to_hash
                end
              end
            end

            class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::CustomFieldsValue,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T::Array[
                    Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::CustomFieldsValue::Value
                  ]
                )
              end
              attr_accessor :values

              sig { returns(T.nilable(String)) }
              attr_reader :field_code

              sig { params(field_code: String).void }
              attr_writer :field_code

              sig { returns(T.nilable(Integer)) }
              attr_reader :field_id

              sig { params(field_id: Integer).void }
              attr_writer :field_id

              sig { returns(T.nilable(String)) }
              attr_reader :field_name

              sig { params(field_name: String).void }
              attr_writer :field_name

              sig { returns(T.nilable(String)) }
              attr_reader :field_type

              sig { params(field_type: String).void }
              attr_writer :field_type

              sig do
                params(
                  values:
                    T::Array[
                      Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::CustomFieldsValue::Value::OrHash
                    ],
                  field_code: String,
                  field_id: Integer,
                  field_name: String,
                  field_type: String
                ).returns(T.attached_class)
              end
              def self.new(
                values:,
                field_code: nil,
                field_id: nil,
                field_name: nil,
                field_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    values:
                      T::Array[
                        Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::CustomFieldsValue::Value
                      ],
                    field_code: String,
                    field_id: Integer,
                    field_name: String,
                    field_type: String
                  }
                )
              end
              def to_hash
              end

              class Value < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse::Embedded::Element::CustomFieldsValue::Value,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.anything) }
                attr_accessor :value

                sig { returns(T.nilable(String)) }
                attr_reader :enum_code

                sig { params(enum_code: String).void }
                attr_writer :enum_code

                sig { returns(T.nilable(Integer)) }
                attr_reader :enum_id

                sig { params(enum_id: Integer).void }
                attr_writer :enum_id

                sig do
                  params(
                    value: T.anything,
                    enum_code: String,
                    enum_id: Integer
                  ).returns(T.attached_class)
                end
                def self.new(value:, enum_code: nil, enum_id: nil)
                end

                sig do
                  override.returns(
                    { value: T.anything, enum_code: String, enum_id: Integer }
                  )
                end
                def to_hash
                end
              end
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICatalogElementsCreateResponse::Problem,
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
          T::Array[Amocrm::Models::APICatalogElementsCreateResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
