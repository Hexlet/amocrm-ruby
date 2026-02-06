# typed: strong

module Amocrm
  module Models
    class CustomerSegmentUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::CustomerSegmentUpdateByIDParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :color

      sig { params(color: String).void }
      attr_writer :color

      sig do
        returns(
          T.nilable(
            T::Array[Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue]
          )
        )
      end
      attr_reader :custom_fields_values

      sig do
        params(
          custom_fields_values:
            T::Array[
              Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::OrHash
            ]
        ).void
      end
      attr_writer :custom_fields_values

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          color: String,
          custom_fields_values:
            T::Array[
              Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        color: nil,
        custom_fields_values: nil,
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            color: String,
            custom_fields_values:
              T::Array[
                Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue
              ],
            name: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue,
              Amocrm::Internal::AnyHash
            )
          end

        # Values for the field (multiple values allowed)
        sig do
          returns(
            T::Array[
              Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::Value
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
                Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::Value::OrHash
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
                  Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::Value
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
                Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::Value,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::Value::Value::Variants
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
                Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::Value::Value::Variants,
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
                  Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::Value::Value::Variants,
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
                  Amocrm::CustomerSegmentUpdateByIDParams::CustomFieldsValue::Value::Value::Variants
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
