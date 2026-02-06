# typed: strong

module Amocrm
  module Models
    module ContactListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::ContactListResponse::ContactListResponse,
            Amocrm::Models::ContactListResponse::Problem
          )
        end

      class ContactListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::ContactListResponse::ContactListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::ContactListResponse::ContactListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(Integer)) }
        attr_reader :_page

        sig { params(_page: Integer).void }
        attr_writer :_page

        sig do
          params(
            _embedded:
              Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::OrHash,
            _links: T.anything,
            _page: Integer
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil, _page: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::ContactListResponse::ContactListResponse::Embedded,
              _links: T.anything,
              _page: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::ContactListResponse::ContactListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact
                ]
              )
            )
          end
          attr_reader :contacts

          sig do
            params(
              contacts:
                T::Array[
                  Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::OrHash
                ]
            ).void
          end
          attr_writer :contacts

          sig do
            params(
              contacts:
                T::Array[
                  Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(contacts: nil)
          end

          sig do
            override.returns(
              {
                contacts:
                  T::Array[
                    Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact
                  ]
              }
            )
          end
          def to_hash
          end

          class Contact < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact,
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
                  Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded
                )
              )
            end
            attr_reader :_embedded

            sig do
              params(
                _embedded:
                  Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::OrHash
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
            attr_reader :closest_task_at

            sig { params(closest_task_at: Integer).void }
            attr_writer :closest_task_at

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
                    Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue
                  ]
                )
              )
            end
            attr_accessor :custom_fields_values

            sig { returns(T.nilable(String)) }
            attr_reader :first_name

            sig { params(first_name: String).void }
            attr_writer :first_name

            sig { returns(T.nilable(Integer)) }
            attr_reader :group_id

            sig { params(group_id: Integer).void }
            attr_writer :group_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_unsorted

            sig { params(is_unsorted: T::Boolean).void }
            attr_writer :is_unsorted

            sig { returns(T.nilable(String)) }
            attr_reader :last_name

            sig { params(last_name: String).void }
            attr_writer :last_name

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(Integer)) }
            attr_reader :responsible_user_id

            sig { params(responsible_user_id: Integer).void }
            attr_writer :responsible_user_id

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
                  Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::OrHash,
                _links: T.anything,
                account_id: Integer,
                closest_task_at: Integer,
                created_at: Integer,
                created_by: Integer,
                custom_fields_values:
                  T.nilable(
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::OrHash
                    ]
                  ),
                first_name: String,
                group_id: Integer,
                is_unsorted: T::Boolean,
                last_name: String,
                name: String,
                responsible_user_id: Integer,
                updated_at: Integer,
                updated_by: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _embedded: nil,
              _links: nil,
              account_id: nil,
              closest_task_at: nil,
              created_at: nil,
              created_by: nil,
              custom_fields_values: nil,
              first_name: nil,
              group_id: nil,
              is_unsorted: nil,
              last_name: nil,
              name: nil,
              responsible_user_id: nil,
              updated_at: nil,
              updated_by: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _embedded:
                    Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded,
                  _links: T.anything,
                  account_id: Integer,
                  closest_task_at: Integer,
                  created_at: Integer,
                  created_by: Integer,
                  custom_fields_values:
                    T.nilable(
                      T::Array[
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue
                      ]
                    ),
                  first_name: String,
                  group_id: Integer,
                  is_unsorted: T::Boolean,
                  last_name: String,
                  name: String,
                  responsible_user_id: Integer,
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
                    Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::CatalogElement
                    ]
                  )
                )
              end
              attr_reader :catalog_elements

              sig do
                params(
                  catalog_elements:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::CatalogElement::OrHash
                    ]
                ).void
              end
              attr_writer :catalog_elements

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Company
                    ]
                  )
                )
              end
              attr_reader :companies

              sig do
                params(
                  companies:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Company::OrHash
                    ]
                ).void
              end
              attr_writer :companies

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Customer
                    ]
                  )
                )
              end
              attr_reader :customers

              sig do
                params(
                  customers:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Customer::OrHash
                    ]
                ).void
              end
              attr_writer :customers

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Lead
                    ]
                  )
                )
              end
              attr_reader :leads

              sig do
                params(
                  leads:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Lead::OrHash
                    ]
                ).void
              end
              attr_writer :leads

              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_reader :social_profiles

              sig { params(social_profiles: T::Array[T.anything]).void }
              attr_writer :social_profiles

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Tag
                    ]
                  )
                )
              end
              attr_reader :tags

              sig do
                params(
                  tags:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Tag::OrHash
                    ]
                ).void
              end
              attr_writer :tags

              sig do
                params(
                  catalog_elements:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::CatalogElement::OrHash
                    ],
                  companies:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Company::OrHash
                    ],
                  customers:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Customer::OrHash
                    ],
                  leads:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Lead::OrHash
                    ],
                  social_profiles: T::Array[T.anything],
                  tags:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Tag::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                catalog_elements: nil,
                companies: nil,
                customers: nil,
                leads: nil,
                social_profiles: nil,
                tags: nil
              )
              end

              sig do
                override.returns(
                  {
                    catalog_elements:
                      T::Array[
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::CatalogElement
                      ],
                    companies:
                      T::Array[
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Company
                      ],
                    customers:
                      T::Array[
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Customer
                      ],
                    leads:
                      T::Array[
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Lead
                      ],
                    social_profiles: T::Array[T.anything],
                    tags:
                      T::Array[
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Tag
                      ]
                  }
                )
              end
              def to_hash
              end

              class CatalogElement < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::CatalogElement,
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

                sig do
                  params(id: Integer, _links: T.anything).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, _links: nil)
                end

                sig { override.returns({ id: Integer, _links: T.anything }) }
                def to_hash
                end
              end

              class Company < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Company,
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

                sig do
                  params(id: Integer, _links: T.anything).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, _links: nil)
                end

                sig { override.returns({ id: Integer, _links: T.anything }) }
                def to_hash
                end
              end

              class Customer < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Customer,
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

                sig do
                  params(id: Integer, _links: T.anything).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, _links: nil)
                end

                sig { override.returns({ id: Integer, _links: T.anything }) }
                def to_hash
                end
              end

              class Lead < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Lead,
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

                sig do
                  params(id: Integer, _links: T.anything).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, _links: nil)
                end

                sig { override.returns({ id: Integer, _links: T.anything }) }
                def to_hash
                end
              end

              class Tag < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::Embedded::Tag,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(String)) }
                attr_reader :color

                sig { params(color: String).void }
                attr_writer :color

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig do
                  params(id: Integer, color: String, name: String).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, color: nil, name: nil)
                end

                sig do
                  override.returns({ id: Integer, color: String, name: String })
                end
                def to_hash
                end
              end
            end

            class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue,
                    Amocrm::Internal::AnyHash
                  )
                end

              # Values for the field (multiple values allowed)
              sig do
                returns(
                  T::Array[
                    Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value
                  ]
                )
              end
              attr_accessor :values

              # Field code (e.g. PHONE/EMAIL)
              sig { returns(T.nilable(String)) }
              attr_reader :field_code

              sig { params(field_code: String).void }
              attr_writer :field_code

              # Use either field_id or field_code (e.g. PHONE/EMAIL)
              sig { returns(T.nilable(Integer)) }
              attr_reader :field_id

              sig { params(field_id: Integer).void }
              attr_writer :field_id

              sig do
                params(
                  values:
                    T::Array[
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value::OrHash
                    ],
                  field_code: String,
                  field_id: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # Values for the field (multiple values allowed)
                values:,
                # Field code (e.g. PHONE/EMAIL)
                field_code: nil,
                # Use either field_id or field_code (e.g. PHONE/EMAIL)
                field_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    values:
                      T::Array[
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value
                      ],
                    field_code: String,
                    field_id: Integer
                  }
                )
              end
              def to_hash
              end

              class Value < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value::Value::Variants
                  )
                end
                attr_accessor :value

                # Option code for list/select custom fields (if you use code instead of id)
                sig { returns(T.nilable(String)) }
                attr_reader :enum_code

                sig { params(enum_code: String).void }
                attr_writer :enum_code

                # Option id for list/select custom fields (one of predefined options)
                sig { returns(T.nilable(Integer)) }
                attr_reader :enum_id

                sig { params(enum_id: Integer).void }
                attr_writer :enum_id

                sig do
                  params(
                    value:
                      Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value::Value::Variants,
                    enum_code: String,
                    enum_id: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  value:,
                  # Option code for list/select custom fields (if you use code instead of id)
                  enum_code: nil,
                  # Option id for list/select custom fields (one of predefined options)
                  enum_id: nil
                )
                end

                sig do
                  override.returns(
                    {
                      value:
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value::Value::Variants,
                      enum_code: String,
                      enum_id: Integer
                    }
                  )
                end
                def to_hash
                end

                module Value
                  extend Amocrm::Internal::Type::Union

                  Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

                  sig do
                    override.returns(
                      T::Array[
                        Amocrm::Models::ContactListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value::Value::Variants
                      ]
                    )
                  end
                  def self.variants
                  end
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
              Amocrm::Models::ContactListResponse::Problem,
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
          T::Array[Amocrm::Models::ContactListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
