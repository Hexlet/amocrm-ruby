# typed: strong

module Amocrm
  module Models
    class V4LeadsUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4LeadsUpdateByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(Amocrm::V4LeadsUpdateByIDParams::Embedded)) }
      attr_reader :_embedded

      sig do
        params(
          _embedded: Amocrm::V4LeadsUpdateByIDParams::Embedded::OrHash
        ).void
      end
      attr_writer :_embedded

      sig { returns(T.nilable(Integer)) }
      attr_reader :closed_at

      sig { params(closed_at: Integer).void }
      attr_writer :closed_at

      # Custom fields payload
      sig do
        returns(
          T.nilable(
            T::Array[Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue]
          )
        )
      end
      attr_reader :custom_fields_values

      sig do
        params(
          custom_fields_values:
            T::Array[Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::OrHash]
        ).void
      end
      attr_writer :custom_fields_values

      sig { returns(T.nilable(Integer)) }
      attr_reader :group_id

      sig { params(group_id: Integer).void }
      attr_writer :group_id

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
      attr_reader :status_id

      sig { params(status_id: Integer).void }
      attr_writer :status_id

      # Tags to attach
      sig do
        returns(T.nilable(T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToAdd]))
      end
      attr_reader :tags_to_add

      sig do
        params(
          tags_to_add:
            T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToAdd::OrHash]
        ).void
      end
      attr_writer :tags_to_add

      # Tags to delete
      sig do
        returns(
          T.nilable(T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToDelete])
        )
      end
      attr_reader :tags_to_delete

      sig do
        params(
          tags_to_delete:
            T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToDelete::OrHash]
        ).void
      end
      attr_writer :tags_to_delete

      sig { returns(T.nilable(Integer)) }
      attr_reader :updated_at

      sig { params(updated_at: Integer).void }
      attr_writer :updated_at

      sig do
        params(
          _embedded: Amocrm::V4LeadsUpdateByIDParams::Embedded::OrHash,
          closed_at: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          group_id: Integer,
          loss_reason_id: Integer,
          name: String,
          pipeline_id: Integer,
          price: Integer,
          responsible_user_id: Integer,
          status_id: Integer,
          tags_to_add:
            T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        _embedded: nil,
        closed_at: nil,
        # Custom fields payload
        custom_fields_values: nil,
        group_id: nil,
        loss_reason_id: nil,
        name: nil,
        pipeline_id: nil,
        price: nil,
        responsible_user_id: nil,
        status_id: nil,
        # Tags to attach
        tags_to_add: nil,
        # Tags to delete
        tags_to_delete: nil,
        updated_at: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            _embedded: Amocrm::V4LeadsUpdateByIDParams::Embedded,
            closed_at: Integer,
            custom_fields_values:
              T::Array[Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue],
            group_id: Integer,
            loss_reason_id: Integer,
            name: String,
            pipeline_id: Integer,
            price: Integer,
            responsible_user_id: Integer,
            status_id: Integer,
            tags_to_add: T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToAdd],
            tags_to_delete:
              T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToDelete],
            updated_at: Integer,
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
              Amocrm::V4LeadsUpdateByIDParams::Embedded,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[Amocrm::V4LeadsUpdateByIDParams::Embedded::Company]
            )
          )
        end
        attr_reader :companies

        sig do
          params(
            companies:
              T::Array[
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Company::OrHash
              ]
          ).void
        end
        attr_writer :companies

        sig do
          returns(
            T.nilable(
              T::Array[Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact]
            )
          )
        end
        attr_reader :contacts

        sig do
          params(
            contacts:
              T::Array[
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::OrHash
              ]
          ).void
        end
        attr_writer :contacts

        sig do
          returns(
            T.nilable(Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata)
          )
        end
        attr_reader :metadata

        sig do
          params(
            metadata:
              Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::OrHash
          ).void
        end
        attr_writer :metadata

        sig do
          returns(T.nilable(Amocrm::V4LeadsUpdateByIDParams::Embedded::Source))
        end
        attr_reader :source

        sig do
          params(
            source: Amocrm::V4LeadsUpdateByIDParams::Embedded::Source::OrHash
          ).void
        end
        attr_writer :source

        sig do
          returns(
            T.nilable(T::Array[Amocrm::V4LeadsUpdateByIDParams::Embedded::Tag])
          )
        end
        attr_reader :tags

        sig do
          params(
            tags:
              T::Array[Amocrm::V4LeadsUpdateByIDParams::Embedded::Tag::OrHash]
          ).void
        end
        attr_writer :tags

        sig do
          params(
            companies:
              T::Array[
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Company::OrHash
              ],
            contacts:
              T::Array[
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::OrHash
              ],
            metadata:
              Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::OrHash,
            source: Amocrm::V4LeadsUpdateByIDParams::Embedded::Source::OrHash,
            tags:
              T::Array[Amocrm::V4LeadsUpdateByIDParams::Embedded::Tag::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          companies: nil,
          contacts: nil,
          metadata: nil,
          source: nil,
          tags: nil
        )
        end

        sig do
          override.returns(
            {
              companies:
                T::Array[Amocrm::V4LeadsUpdateByIDParams::Embedded::Company],
              contacts:
                T::Array[Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact],
              metadata: Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata,
              source: Amocrm::V4LeadsUpdateByIDParams::Embedded::Source,
              tags: T::Array[Amocrm::V4LeadsUpdateByIDParams::Embedded::Tag]
            }
          )
        end
        def to_hash
        end

        class Company < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Company,
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

          sig { params(id: Integer, name: String).returns(T.attached_class) }
          def self.new(id: nil, name: nil)
          end

          sig { override.returns({ id: Integer, name: String }) }
          def to_hash
          end
        end

        class Contact < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact,
                Amocrm::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          # Custom fields payload (same as contact create API)
          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue
                ]
              )
            )
          end
          attr_reader :custom_fields_values

          sig do
            params(
              custom_fields_values:
                T::Array[
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::OrHash
                ]
            ).void
          end
          attr_writer :custom_fields_values

          sig { returns(T.nilable(String)) }
          attr_reader :first_name

          sig { params(first_name: String).void }
          attr_writer :first_name

          sig { returns(T.nilable(String)) }
          attr_reader :last_name

          sig { params(last_name: String).void }
          attr_writer :last_name

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              id: Integer,
              custom_fields_values:
                T::Array[
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::OrHash
                ],
              first_name: String,
              last_name: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            # Custom fields payload (same as contact create API)
            custom_fields_values: nil,
            first_name: nil,
            last_name: nil,
            name: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                custom_fields_values:
                  T::Array[
                    Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue
                  ],
                first_name: String,
                last_name: String,
                name: String
              }
            )
          end
          def to_hash
          end

          class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue,
                  Amocrm::Internal::AnyHash
                )
              end

            # Values for the field (multiple values allowed)
            sig do
              returns(
                T::Array[
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::Value
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
                    Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::Value::OrHash
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
                      Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::Value
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
                    Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::Value,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::Value::Value::Variants
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
                    Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::Value::Value::Variants,
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
                      Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::Value::Value::Variants,
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
                      Amocrm::V4LeadsUpdateByIDParams::Embedded::Contact::CustomFieldsValue::Value::Value::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end
          end
        end

        class Metadata < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata,
                Amocrm::Internal::AnyHash
              )
            end

          # Unsorted category
          sig do
            returns(
              T.nilable(
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::OrSymbol
              )
            )
          end
          attr_reader :category

          sig do
            params(
              category:
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::OrSymbol
            ).void
          end
          attr_writer :category

          # Form id in your system (string or numeric)
          sig do
            returns(
              T.nilable(
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::FormID::Variants
              )
            )
          end
          attr_reader :form_id

          sig do
            params(
              form_id:
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::FormID::Variants
            ).void
          end
          attr_writer :form_id

          # Form name (shown in amoCRM)
          sig { returns(T.nilable(String)) }
          attr_reader :form_name

          sig { params(form_name: String).void }
          attr_writer :form_name

          # Page URL where form lives
          sig { returns(T.nilable(String)) }
          attr_reader :form_page

          sig { params(form_page: String).void }
          attr_writer :form_page

          # Unix timestamp (seconds) when the form was submitted
          sig { returns(T.nilable(Integer)) }
          attr_reader :form_sent_at

          sig { params(form_sent_at: Integer).void }
          attr_writer :form_sent_at

          # Form type code from amoCRM, use only if you know it
          sig { returns(T.nilable(Integer)) }
          attr_reader :form_type

          sig { params(form_type: Integer).void }
          attr_writer :form_type

          # IP address of the submitter
          sig { returns(T.nilable(String)) }
          attr_reader :ip

          sig { params(ip: String).void }
          attr_writer :ip

          # Referrer URL
          sig { returns(T.nilable(String)) }
          attr_reader :referer

          sig { params(referer: String).void }
          attr_writer :referer

          # Visitor uid from tracking, if you have it
          sig { returns(T.nilable(String)) }
          attr_reader :visitor_uid

          sig { params(visitor_uid: String).void }
          attr_writer :visitor_uid

          sig do
            params(
              category:
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::OrSymbol,
              form_id:
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::FormID::Variants,
              form_name: String,
              form_page: String,
              form_sent_at: Integer,
              form_type: Integer,
              ip: String,
              referer: String,
              visitor_uid: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unsorted category
            category: nil,
            # Form id in your system (string or numeric)
            form_id: nil,
            # Form name (shown in amoCRM)
            form_name: nil,
            # Page URL where form lives
            form_page: nil,
            # Unix timestamp (seconds) when the form was submitted
            form_sent_at: nil,
            # Form type code from amoCRM, use only if you know it
            form_type: nil,
            # IP address of the submitter
            ip: nil,
            # Referrer URL
            referer: nil,
            # Visitor uid from tracking, if you have it
            visitor_uid: nil
          )
          end

          sig do
            override.returns(
              {
                category:
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::OrSymbol,
                form_id:
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::FormID::Variants,
                form_name: String,
                form_page: String,
                form_sent_at: Integer,
                form_type: Integer,
                ip: String,
                referer: String,
                visitor_uid: String
              }
            )
          end
          def to_hash
          end

          # Unsorted category
          module Category
            extend Amocrm::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SIP =
              T.let(
                :sip,
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::TaggedSymbol
              )
            FORMS =
              T.let(
                :forms,
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::TaggedSymbol
              )
            CHATS =
              T.let(
                :chats,
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::TaggedSymbol
              )
            MAIL =
              T.let(
                :mail,
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::Category::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Form id in your system (string or numeric)
          module FormID
            extend Amocrm::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer) }

            sig do
              override.returns(
                T::Array[
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Metadata::FormID::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class Source < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Source,
                Amocrm::Internal::AnyHash
              )
            end

          # External id in your system
          sig do
            returns(
              T.nilable(
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Source::ExternalID::Variants
              )
            )
          end
          attr_reader :external_id

          sig do
            params(
              external_id:
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Source::ExternalID::Variants
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
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Source::ExternalID::Variants,
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
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Source::ExternalID::Variants,
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
                  Amocrm::V4LeadsUpdateByIDParams::Embedded::Source::ExternalID::Variants
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
                Amocrm::V4LeadsUpdateByIDParams::Embedded::Tag,
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
              Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue,
              Amocrm::Internal::AnyHash
            )
          end

        # Values for the field (multiple values allowed)
        sig do
          returns(
            T::Array[Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::Value]
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
                Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::Value::OrHash
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
                  Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::Value
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
                Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::Value,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::Value::Value::Variants
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
                Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::Value::Value::Variants,
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
                  Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::Value::Value::Variants,
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
                  Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::Value::Value::Variants
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
              Amocrm::V4LeadsUpdateByIDParams::TagsToAdd,
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
              Amocrm::V4LeadsUpdateByIDParams::TagsToDelete,
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
