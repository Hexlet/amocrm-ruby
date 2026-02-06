# typed: strong

module Amocrm
  module Models
    class V4CatalogElementsUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4CatalogElementsUpdateParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Amocrm::V4CatalogElementsUpdateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4CatalogElementsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4CatalogElementsUpdateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::V4CatalogElementsUpdateParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(
              T::Array[
                Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue
              ]
            )
          )
        end
        attr_reader :custom_fields_values

        sig do
          params(
            custom_fields_values:
              T::Array[
                Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::OrHash
              ]
          ).void
        end
        attr_writer :custom_fields_values

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig do
          params(
            id: Integer,
            custom_fields_values:
              T::Array[
                Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::OrHash
              ],
            name: String,
            request_id: String
          ).returns(T.attached_class)
        end
        def self.new(id:, custom_fields_values: nil, name: nil, request_id: nil)
        end

        sig do
          override.returns(
            {
              id: Integer,
              custom_fields_values:
                T::Array[
                  Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue
                ],
              name: String,
              request_id: String
            }
          )
        end
        def to_hash
        end

        class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::Value
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
                  Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::Value::OrHash
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
                    Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::Value
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
                  Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::Value,
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
end
