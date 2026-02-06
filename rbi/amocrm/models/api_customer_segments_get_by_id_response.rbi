# typed: strong

module Amocrm
  module Models
    module APICustomerSegmentsGetByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment,
            Amocrm::Models::APICustomerSegmentsGetByIDResponse::Problem
          )
        end

      class CustomerSegment < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment,
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

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig do
          returns(
            T.nilable(
              T::Array[
                Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue
              ]
            )
          )
        end
        attr_accessor :custom_fields_values

        sig { returns(T.nilable(Integer)) }
        attr_reader :customers_count

        sig { params(customers_count: Integer).void }
        attr_writer :customers_count

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_at

        sig { params(updated_at: Integer).void }
        attr_writer :updated_at

        sig do
          params(
            id: Integer,
            color: String,
            created_at: Integer,
            custom_fields_values:
              T.nilable(
                T::Array[
                  Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::OrHash
                ]
              ),
            customers_count: Integer,
            name: String,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          color: nil,
          created_at: nil,
          custom_fields_values: nil,
          customers_count: nil,
          name: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              color: String,
              created_at: Integer,
              custom_fields_values:
                T.nilable(
                  T::Array[
                    Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue
                  ]
                ),
              customers_count: Integer,
              name: String,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end

        class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue,
                Amocrm::Internal::AnyHash
              )
            end

          # Values for the field (multiple values allowed)
          sig do
            returns(
              T::Array[
                Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value
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
                  Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value::OrHash
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
                    Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value
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
                  Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value,
                  Amocrm::Internal::AnyHash
                )
              end

            sig do
              returns(
                Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value::Value::Variants
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
                  Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value::Value::Variants,
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
                    Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value::Value::Variants,
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
                    Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value::Value::Variants
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
              Amocrm::Models::APICustomerSegmentsGetByIDResponse::Problem,
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
          T::Array[Amocrm::Models::APICustomerSegmentsGetByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
