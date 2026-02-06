# typed: strong

module Amocrm
  module Models
    module V4LeadsListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4LeadsListResponse::LeadListResponse,
            Amocrm::Models::V4LeadsListResponse::Problem
          )
        end

      class LeadListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4LeadsListResponse::LeadListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::OrHash
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
              Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::OrHash,
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
                Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded,
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
                Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead
                ]
              )
            )
          end
          attr_reader :leads

          sig do
            params(
              leads:
                T::Array[
                  Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::OrHash
                ]
            ).void
          end
          attr_writer :leads

          sig do
            params(
              leads:
                T::Array[
                  Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(leads: nil)
          end

          sig do
            override.returns(
              {
                leads:
                  T::Array[
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead
                  ]
              }
            )
          end
          def to_hash
          end

          class Lead < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead,
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
                  Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded
                )
              )
            end
            attr_reader :_embedded

            sig do
              params(
                _embedded:
                  Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::OrHash
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
            attr_reader :closed_at

            sig { params(closed_at: Integer).void }
            attr_writer :closed_at

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
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue
                  ]
                )
              )
            end
            attr_accessor :custom_fields_values

            sig { returns(T.nilable(Integer)) }
            attr_reader :group_id

            sig { params(group_id: Integer).void }
            attr_writer :group_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_deleted

            sig { params(is_deleted: T::Boolean).void }
            attr_writer :is_deleted

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_price_modified_by_robot

            sig { params(is_price_modified_by_robot: T::Boolean).void }
            attr_writer :is_price_modified_by_robot

            sig { returns(T.nilable(Integer)) }
            attr_reader :labor_cost

            sig { params(labor_cost: Integer).void }
            attr_writer :labor_cost

            sig { returns(T.nilable(Integer)) }
            attr_reader :loss_reason_id

            sig { params(loss_reason_id: Integer).void }
            attr_writer :loss_reason_id

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(Integer)) }
            attr_reader :pipeline_id

            sig { params(pipeline_id: Integer).void }
            attr_writer :pipeline_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :price

            sig { params(price: Integer).void }
            attr_writer :price

            sig { returns(T.nilable(Integer)) }
            attr_reader :responsible_user_id

            sig { params(responsible_user_id: Integer).void }
            attr_writer :responsible_user_id

            sig { returns(T.nilable(Integer)) }
            attr_accessor :score

            sig { returns(T.nilable(Integer)) }
            attr_reader :source_id

            sig { params(source_id: Integer).void }
            attr_writer :source_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :status_id

            sig { params(status_id: Integer).void }
            attr_writer :status_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_by

            sig { params(updated_by: Integer).void }
            attr_writer :updated_by

            sig { returns(T.nilable(String)) }
            attr_reader :visitor_uid

            sig { params(visitor_uid: String).void }
            attr_writer :visitor_uid

            sig do
              params(
                id: Integer,
                _embedded:
                  Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::OrHash,
                _links: T.anything,
                account_id: Integer,
                closed_at: Integer,
                closest_task_at: Integer,
                created_at: Integer,
                created_by: Integer,
                custom_fields_values:
                  T.nilable(
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::OrHash
                    ]
                  ),
                group_id: Integer,
                is_deleted: T::Boolean,
                is_price_modified_by_robot: T::Boolean,
                labor_cost: Integer,
                loss_reason_id: Integer,
                name: String,
                pipeline_id: Integer,
                price: Integer,
                responsible_user_id: Integer,
                score: T.nilable(Integer),
                source_id: Integer,
                status_id: Integer,
                updated_at: Integer,
                updated_by: Integer,
                visitor_uid: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _embedded: nil,
              _links: nil,
              account_id: nil,
              closed_at: nil,
              closest_task_at: nil,
              created_at: nil,
              created_by: nil,
              custom_fields_values: nil,
              group_id: nil,
              is_deleted: nil,
              is_price_modified_by_robot: nil,
              labor_cost: nil,
              loss_reason_id: nil,
              name: nil,
              pipeline_id: nil,
              price: nil,
              responsible_user_id: nil,
              score: nil,
              source_id: nil,
              status_id: nil,
              updated_at: nil,
              updated_by: nil,
              visitor_uid: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _embedded:
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded,
                  _links: T.anything,
                  account_id: Integer,
                  closed_at: Integer,
                  closest_task_at: Integer,
                  created_at: Integer,
                  created_by: Integer,
                  custom_fields_values:
                    T.nilable(
                      T::Array[
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue
                      ]
                    ),
                  group_id: Integer,
                  is_deleted: T::Boolean,
                  is_price_modified_by_robot: T::Boolean,
                  labor_cost: Integer,
                  loss_reason_id: Integer,
                  name: String,
                  pipeline_id: Integer,
                  price: Integer,
                  responsible_user_id: Integer,
                  score: T.nilable(Integer),
                  source_id: Integer,
                  status_id: Integer,
                  updated_at: Integer,
                  updated_by: Integer,
                  visitor_uid: String
                }
              )
            end
            def to_hash
            end

            class Embedded < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::CatalogElement
                    ]
                  )
                )
              end
              attr_reader :catalog_elements

              sig do
                params(
                  catalog_elements:
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::CatalogElement::OrHash
                    ]
                ).void
              end
              attr_writer :catalog_elements

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Company
                    ]
                  )
                )
              end
              attr_reader :companies

              sig do
                params(
                  companies:
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Company::OrHash
                    ]
                ).void
              end
              attr_writer :companies

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Contact
                    ]
                  )
                )
              end
              attr_reader :contacts

              sig do
                params(
                  contacts:
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Contact::OrHash
                    ]
                ).void
              end
              attr_writer :contacts

              sig do
                returns(
                  T.nilable(
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::LossReason
                  )
                )
              end
              attr_reader :loss_reason

              sig do
                params(
                  loss_reason:
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::LossReason::OrHash
                ).void
              end
              attr_writer :loss_reason

              sig do
                returns(
                  T.nilable(
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source
                  )
                )
              end
              attr_reader :source

              sig do
                params(
                  source:
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source::OrHash
                ).void
              end
              attr_writer :source

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Tag
                    ]
                  )
                )
              end
              attr_reader :tags

              sig do
                params(
                  tags:
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Tag::OrHash
                    ]
                ).void
              end
              attr_writer :tags

              sig do
                params(
                  catalog_elements:
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::CatalogElement::OrHash
                    ],
                  companies:
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Company::OrHash
                    ],
                  contacts:
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Contact::OrHash
                    ],
                  loss_reason:
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::LossReason::OrHash,
                  source:
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source::OrHash,
                  tags:
                    T::Array[
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Tag::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                catalog_elements: nil,
                companies: nil,
                contacts: nil,
                loss_reason: nil,
                source: nil,
                tags: nil
              )
              end

              sig do
                override.returns(
                  {
                    catalog_elements:
                      T::Array[
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::CatalogElement
                      ],
                    companies:
                      T::Array[
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Company
                      ],
                    contacts:
                      T::Array[
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Contact
                      ],
                    loss_reason:
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::LossReason,
                    source:
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source,
                    tags:
                      T::Array[
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Tag
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
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::CatalogElement,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(T.anything)) }
                attr_reader :metadata

                sig { params(metadata: T.anything).void }
                attr_writer :metadata

                sig do
                  params(id: Integer, metadata: T.anything).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, metadata: nil)
                end

                sig { override.returns({ id: Integer, metadata: T.anything }) }
                def to_hash
                end
              end

              class Company < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Company,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { params(id: Integer).returns(T.attached_class) }
                def self.new(id: nil)
                end

                sig { override.returns({ id: Integer }) }
                def to_hash
                end
              end

              class Contact < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Contact,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :is_main

                sig { params(is_main: T::Boolean).void }
                attr_writer :is_main

                sig do
                  params(id: Integer, is_main: T::Boolean).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, is_main: nil)
                end

                sig { override.returns({ id: Integer, is_main: T::Boolean }) }
                def to_hash
                end
              end

              class LossReason < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::LossReason,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig do
                  params(id: Integer, name: String).returns(T.attached_class)
                end
                def self.new(id: nil, name: nil)
                end

                sig { override.returns({ id: Integer, name: String }) }
                def to_hash
                end
              end

              class Source < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source,
                      Amocrm::Internal::AnyHash
                    )
                  end

                # External id in your system
                sig do
                  returns(
                    T.nilable(
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source::ExternalID::Variants
                    )
                  )
                end
                attr_reader :external_id

                sig do
                  params(
                    external_id:
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source::ExternalID::Variants
                  ).void
                end
                attr_writer :external_id

                # Source type
                sig { returns(T.nilable(String)) }
                attr_reader :type

                sig { params(type: String).void }
                attr_writer :type

                sig do
                  params(
                    external_id:
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source::ExternalID::Variants,
                    type: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # External id in your system
                  external_id: nil,
                  # Source type
                  type: nil
                )
                end

                sig do
                  override.returns(
                    {
                      external_id:
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source::ExternalID::Variants,
                      type: String
                    }
                  )
                end
                def to_hash
                end

                # External id in your system
                module ExternalID
                  extend Amocrm::Internal::Type::Union

                  Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

                  sig do
                    override.returns(
                      T::Array[
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source::ExternalID::Variants
                      ]
                    )
                  end
                  def self.variants
                  end
                end
              end

              class Tag < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Tag,
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
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue,
                    Amocrm::Internal::AnyHash
                  )
                end

              # Values for the field (multiple values allowed)
              sig do
                returns(
                  T::Array[
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value
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
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value::OrHash
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
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value
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
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value::Value::Variants
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
                      Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value::Value::Variants,
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
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value::Value::Variants,
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
                        Amocrm::Models::V4LeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value::Value::Variants
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
              Amocrm::Models::V4LeadsListResponse::Problem,
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
          T::Array[Amocrm::Models::V4LeadsListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
