# typed: strong

module Amocrm
  module Models
    module CustomerGetByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::CustomerGetByIDResponse::Customer,
            Amocrm::Models::CustomerGetByIDResponse::Problem
          )
        end

      class Customer < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::CustomerGetByIDResponse::Customer,
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
              Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::OrHash
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
        attr_reader :average_check

        sig { params(average_check: Integer).void }
        attr_writer :average_check

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
                Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue
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

        sig { returns(T.nilable(Integer)) }
        attr_reader :ltv

        sig { params(ltv: Integer).void }
        attr_writer :ltv

        sig { returns(T.nilable(Integer)) }
        attr_reader :main_user_id

        sig { params(main_user_id: Integer).void }
        attr_writer :main_user_id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Integer)) }
        attr_reader :next_date

        sig { params(next_date: Integer).void }
        attr_writer :next_date

        sig { returns(T.nilable(Integer)) }
        attr_reader :next_price

        sig { params(next_price: Integer).void }
        attr_writer :next_price

        sig { returns(T.nilable(Integer)) }
        attr_reader :periodicity

        sig { params(periodicity: Integer).void }
        attr_writer :periodicity

        sig { returns(T.nilable(Integer)) }
        attr_reader :purchases_count

        sig { params(purchases_count: Integer).void }
        attr_writer :purchases_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :responsible_user_id

        sig { params(responsible_user_id: Integer).void }
        attr_writer :responsible_user_id

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

        sig do
          params(
            id: Integer,
            _embedded:
              Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::OrHash,
            _links: T.anything,
            account_id: Integer,
            average_check: Integer,
            closest_task_at: Integer,
            created_at: Integer,
            created_by: Integer,
            custom_fields_values:
              T.nilable(
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::OrHash
                ]
              ),
            group_id: Integer,
            is_deleted: T::Boolean,
            ltv: Integer,
            main_user_id: Integer,
            name: String,
            next_date: Integer,
            next_price: Integer,
            periodicity: Integer,
            purchases_count: Integer,
            responsible_user_id: Integer,
            status_id: Integer,
            updated_at: Integer,
            updated_by: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          _embedded: nil,
          _links: nil,
          account_id: nil,
          average_check: nil,
          closest_task_at: nil,
          created_at: nil,
          created_by: nil,
          custom_fields_values: nil,
          group_id: nil,
          is_deleted: nil,
          ltv: nil,
          main_user_id: nil,
          name: nil,
          next_date: nil,
          next_price: nil,
          periodicity: nil,
          purchases_count: nil,
          responsible_user_id: nil,
          status_id: nil,
          updated_at: nil,
          updated_by: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              _embedded:
                Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded,
              _links: T.anything,
              account_id: Integer,
              average_check: Integer,
              closest_task_at: Integer,
              created_at: Integer,
              created_by: Integer,
              custom_fields_values:
                T.nilable(
                  T::Array[
                    Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue
                  ]
                ),
              group_id: Integer,
              is_deleted: T::Boolean,
              ltv: Integer,
              main_user_id: Integer,
              name: String,
              next_date: Integer,
              next_price: Integer,
              periodicity: Integer,
              purchases_count: Integer,
              responsible_user_id: Integer,
              status_id: Integer,
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
                Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::CatalogElement
                ]
              )
            )
          end
          attr_reader :catalog_elements

          sig do
            params(
              catalog_elements:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::CatalogElement::OrHash
                ]
            ).void
          end
          attr_writer :catalog_elements

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Company
                ]
              )
            )
          end
          attr_reader :companies

          sig do
            params(
              companies:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Company::OrHash
                ]
            ).void
          end
          attr_writer :companies

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Contact
                ]
              )
            )
          end
          attr_reader :contacts

          sig do
            params(
              contacts:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Contact::OrHash
                ]
            ).void
          end
          attr_writer :contacts

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Segment
                ]
              )
            )
          end
          attr_reader :segments

          sig do
            params(
              segments:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Segment::OrHash
                ]
            ).void
          end
          attr_writer :segments

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Tag
                ]
              )
            )
          end
          attr_reader :tags

          sig do
            params(
              tags:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Tag::OrHash
                ]
            ).void
          end
          attr_writer :tags

          sig do
            params(
              catalog_elements:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::CatalogElement::OrHash
                ],
              companies:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Company::OrHash
                ],
              contacts:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Contact::OrHash
                ],
              segments:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Segment::OrHash
                ],
              tags:
                T::Array[
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Tag::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            catalog_elements: nil,
            companies: nil,
            contacts: nil,
            segments: nil,
            tags: nil
          )
          end

          sig do
            override.returns(
              {
                catalog_elements:
                  T::Array[
                    Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::CatalogElement
                  ],
                companies:
                  T::Array[
                    Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Company
                  ],
                contacts:
                  T::Array[
                    Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Contact
                  ],
                segments:
                  T::Array[
                    Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Segment
                  ],
                tags:
                  T::Array[
                    Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Tag
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
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::CatalogElement,
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
              params(id: Integer, _links: T.anything).returns(T.attached_class)
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
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Company,
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
              params(id: Integer, _links: T.anything).returns(T.attached_class)
            end
            def self.new(id: nil, _links: nil)
            end

            sig { override.returns({ id: Integer, _links: T.anything }) }
            def to_hash
            end
          end

          class Contact < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Contact,
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
              params(id: Integer, _links: T.anything).returns(T.attached_class)
            end
            def self.new(id: nil, _links: nil)
            end

            sig { override.returns({ id: Integer, _links: T.anything }) }
            def to_hash
            end
          end

          class Segment < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Segment,
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
              params(id: Integer, _links: T.anything).returns(T.attached_class)
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
                  Amocrm::Models::CustomerGetByIDResponse::Customer::Embedded::Tag,
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
                Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue,
                Amocrm::Internal::AnyHash
              )
            end

          # Values for the field (multiple values allowed)
          sig do
            returns(
              T::Array[
                Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::Value
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
                  Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::Value::OrHash
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
                    Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::Value
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
                  Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::Value,
                  Amocrm::Internal::AnyHash
                )
              end

            sig do
              returns(
                Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::Value::Value::Variants
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
                  Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::Value::Value::Variants,
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
                    Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::Value::Value::Variants,
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
                    Amocrm::Models::CustomerGetByIDResponse::Customer::CustomFieldsValue::Value::Value::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::CustomerGetByIDResponse::Problem,
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
          T::Array[Amocrm::Models::CustomerGetByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
