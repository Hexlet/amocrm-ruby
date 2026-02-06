# typed: strong

module Amocrm
  module Models
    class CustomerUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CustomerUpdateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::CustomerUpdateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::CustomerUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::CustomerUpdateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::CustomerUpdateParams::Body, Amocrm::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(T.nilable(Amocrm::CustomerUpdateParams::Body::Embedded)) }
        attr_reader :_embedded

        sig do
          params(
            _embedded: Amocrm::CustomerUpdateParams::Body::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig do
          returns(
            T.nilable(
              T::Array[Amocrm::CustomerUpdateParams::Body::CustomFieldsValue]
            )
          )
        end
        attr_reader :custom_fields_values

        sig do
          params(
            custom_fields_values:
              T::Array[
                Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::OrHash
              ]
          ).void
        end
        attr_writer :custom_fields_values

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
        attr_reader :responsible_user_id

        sig { params(responsible_user_id: Integer).void }
        attr_writer :responsible_user_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :status_id

        sig { params(status_id: Integer).void }
        attr_writer :status_id

        sig do
          returns(
            T.nilable(T::Array[Amocrm::CustomerUpdateParams::Body::TagsToAdd])
          )
        end
        attr_reader :tags_to_add

        sig do
          params(
            tags_to_add:
              T::Array[Amocrm::CustomerUpdateParams::Body::TagsToAdd::OrHash]
          ).void
        end
        attr_writer :tags_to_add

        sig do
          returns(
            T.nilable(
              T::Array[Amocrm::CustomerUpdateParams::Body::TagsToDelete]
            )
          )
        end
        attr_reader :tags_to_delete

        sig do
          params(
            tags_to_delete:
              T::Array[Amocrm::CustomerUpdateParams::Body::TagsToDelete::OrHash]
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
            id: Integer,
            _embedded: Amocrm::CustomerUpdateParams::Body::Embedded::OrHash,
            custom_fields_values:
              T::Array[
                Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::OrHash
              ],
            main_user_id: Integer,
            name: String,
            next_date: Integer,
            next_price: Integer,
            periodicity: Integer,
            responsible_user_id: Integer,
            status_id: Integer,
            tags_to_add:
              T::Array[Amocrm::CustomerUpdateParams::Body::TagsToAdd::OrHash],
            tags_to_delete:
              T::Array[
                Amocrm::CustomerUpdateParams::Body::TagsToDelete::OrHash
              ],
            updated_at: Integer,
            updated_by: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          _embedded: nil,
          custom_fields_values: nil,
          main_user_id: nil,
          name: nil,
          next_date: nil,
          next_price: nil,
          periodicity: nil,
          responsible_user_id: nil,
          status_id: nil,
          tags_to_add: nil,
          tags_to_delete: nil,
          updated_at: nil,
          updated_by: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              _embedded: Amocrm::CustomerUpdateParams::Body::Embedded,
              custom_fields_values:
                T::Array[Amocrm::CustomerUpdateParams::Body::CustomFieldsValue],
              main_user_id: Integer,
              name: String,
              next_date: Integer,
              next_price: Integer,
              periodicity: Integer,
              responsible_user_id: Integer,
              status_id: Integer,
              tags_to_add:
                T::Array[Amocrm::CustomerUpdateParams::Body::TagsToAdd],
              tags_to_delete:
                T::Array[Amocrm::CustomerUpdateParams::Body::TagsToDelete],
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
                Amocrm::CustomerUpdateParams::Body::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[Amocrm::CustomerUpdateParams::Body::Embedded::Segment]
              )
            )
          end
          attr_accessor :segments

          sig do
            returns(
              T.nilable(
                T::Array[Amocrm::CustomerUpdateParams::Body::Embedded::Tag]
              )
            )
          end
          attr_accessor :tags

          sig do
            params(
              segments:
                T.nilable(
                  T::Array[
                    Amocrm::CustomerUpdateParams::Body::Embedded::Segment::OrHash
                  ]
                ),
              tags:
                T.nilable(
                  T::Array[
                    Amocrm::CustomerUpdateParams::Body::Embedded::Tag::OrHash
                  ]
                )
            ).returns(T.attached_class)
          end
          def self.new(segments: nil, tags: nil)
          end

          sig do
            override.returns(
              {
                segments:
                  T.nilable(
                    T::Array[
                      Amocrm::CustomerUpdateParams::Body::Embedded::Segment
                    ]
                  ),
                tags:
                  T.nilable(
                    T::Array[Amocrm::CustomerUpdateParams::Body::Embedded::Tag]
                  )
              }
            )
          end
          def to_hash
          end

          class Segment < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::CustomerUpdateParams::Body::Embedded::Segment,
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
                  Amocrm::CustomerUpdateParams::Body::Embedded::Tag,
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
                Amocrm::CustomerUpdateParams::Body::CustomFieldsValue,
                Amocrm::Internal::AnyHash
              )
            end

          # Values for the field (multiple values allowed)
          sig do
            returns(
              T::Array[
                Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value
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
                  Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value::OrHash
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
                    Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value
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
                  Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value,
                  Amocrm::Internal::AnyHash
                )
              end

            sig do
              returns(
                Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value::Value::Variants
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
                  Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value::Value::Variants,
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
                    Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value::Value::Variants,
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
                    Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value::Value::Variants
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
                Amocrm::CustomerUpdateParams::Body::TagsToAdd,
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
                Amocrm::CustomerUpdateParams::Body::TagsToDelete,
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
end
