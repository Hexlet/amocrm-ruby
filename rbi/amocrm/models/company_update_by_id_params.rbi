# typed: strong

module Amocrm
  module Models
    class CompanyUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CompanyUpdateByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(Amocrm::CompanyUpdateByIDParams::Embedded)) }
      attr_reader :_embedded

      sig do
        params(
          _embedded: Amocrm::CompanyUpdateByIDParams::Embedded::OrHash
        ).void
      end
      attr_writer :_embedded

      sig { returns(T.nilable(Integer)) }
      attr_reader :created_at

      sig { params(created_at: Integer).void }
      attr_writer :created_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :created_by

      sig { params(created_by: Integer).void }
      attr_writer :created_by

      # Custom fields payload
      sig do
        returns(
          T.nilable(
            T::Array[Amocrm::CompanyUpdateByIDParams::CustomFieldsValue]
          )
        )
      end
      attr_reader :custom_fields_values

      sig do
        params(
          custom_fields_values:
            T::Array[Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::OrHash]
        ).void
      end
      attr_writer :custom_fields_values

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Integer)) }
      attr_reader :responsible_user_id

      sig { params(responsible_user_id: Integer).void }
      attr_writer :responsible_user_id

      # Tags to attach
      sig do
        returns(T.nilable(T::Array[Amocrm::CompanyUpdateByIDParams::TagsToAdd]))
      end
      attr_reader :tags_to_add

      sig do
        params(
          tags_to_add:
            T::Array[Amocrm::CompanyUpdateByIDParams::TagsToAdd::OrHash]
        ).void
      end
      attr_writer :tags_to_add

      # Tags to delete
      sig do
        returns(
          T.nilable(T::Array[Amocrm::CompanyUpdateByIDParams::TagsToDelete])
        )
      end
      attr_reader :tags_to_delete

      sig do
        params(
          tags_to_delete:
            T::Array[Amocrm::CompanyUpdateByIDParams::TagsToDelete::OrHash]
        ).void
      end
      attr_writer :tags_to_delete

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
          _embedded: Amocrm::CompanyUpdateByIDParams::Embedded::OrHash,
          created_at: Integer,
          created_by: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          responsible_user_id: Integer,
          tags_to_add:
            T::Array[Amocrm::CompanyUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::CompanyUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        _embedded: nil,
        created_at: nil,
        created_by: nil,
        # Custom fields payload
        custom_fields_values: nil,
        name: nil,
        responsible_user_id: nil,
        # Tags to attach
        tags_to_add: nil,
        # Tags to delete
        tags_to_delete: nil,
        updated_at: nil,
        updated_by: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            _embedded: Amocrm::CompanyUpdateByIDParams::Embedded,
            created_at: Integer,
            created_by: Integer,
            custom_fields_values:
              T::Array[Amocrm::CompanyUpdateByIDParams::CustomFieldsValue],
            name: String,
            responsible_user_id: Integer,
            tags_to_add: T::Array[Amocrm::CompanyUpdateByIDParams::TagsToAdd],
            tags_to_delete:
              T::Array[Amocrm::CompanyUpdateByIDParams::TagsToDelete],
            updated_at: Integer,
            updated_by: Integer,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Embedded < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::CompanyUpdateByIDParams::Embedded,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(T::Array[Amocrm::CompanyUpdateByIDParams::Embedded::Tag])
          )
        end
        attr_accessor :tags

        sig do
          params(
            tags:
              T.nilable(
                T::Array[Amocrm::CompanyUpdateByIDParams::Embedded::Tag::OrHash]
              )
          ).returns(T.attached_class)
        end
        def self.new(tags: nil)
        end

        sig do
          override.returns(
            {
              tags:
                T.nilable(
                  T::Array[Amocrm::CompanyUpdateByIDParams::Embedded::Tag]
                )
            }
          )
        end
        def to_hash
        end

        class Tag < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::CompanyUpdateByIDParams::Embedded::Tag,
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

          sig { override.returns({ id: Integer, color: String, name: String }) }
          def to_hash
          end
        end
      end

      class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::CompanyUpdateByIDParams::CustomFieldsValue,
              Amocrm::Internal::AnyHash
            )
          end

        # Values for the field (multiple values allowed)
        sig do
          returns(
            T::Array[Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::Value]
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
                Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::Value::OrHash
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
                  Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::Value
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
                Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::Value,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::Value::Value::Variants
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
                Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::Value::Value::Variants,
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
                  Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::Value::Value::Variants,
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
                  Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::Value::Value::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end

      class TagsToAdd < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::CompanyUpdateByIDParams::TagsToAdd,
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

        sig { override.returns({ id: Integer, color: String, name: String }) }
        def to_hash
        end
      end

      class TagsToDelete < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::CompanyUpdateByIDParams::TagsToDelete,
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

        sig { override.returns({ id: Integer, color: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
