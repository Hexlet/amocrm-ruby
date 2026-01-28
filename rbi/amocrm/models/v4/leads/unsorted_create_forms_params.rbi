# typed: strong

module Amocrm
  module Models
    module V4
      module Leads
        class UnsortedCreateFormsParams < Amocrm::Internal::Type::BaseModel
          extend Amocrm::Internal::Type::RequestParameters::Converter
          include Amocrm::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Amocrm::V4::Leads::UnsortedCreateFormsParams,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body]
            )
          end
          attr_accessor :body

          sig do
            params(
              body:
                T::Array[
                  Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::OrHash
                ],
              request_options: Amocrm::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(body:, request_options: {})
          end

          sig do
            override.returns(
              {
                body:
                  T::Array[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body],
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
                  Amocrm::V4::Leads::UnsortedCreateFormsParams::Body,
                  Amocrm::Internal::AnyHash
                )
              end

            # Form metadata
            sig do
              returns(
                Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata
              )
            end
            attr_reader :metadata

            sig do
              params(
                metadata:
                  Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata::OrHash
              ).void
            end
            attr_writer :metadata

            # Human-readable source name shown in amoCRM (e.g. "Website form", "Landing page")
            sig { returns(String) }
            attr_accessor :source_name

            # Your stable id of the source: site/form/widget/integration that sent the lead
            sig { returns(String) }
            attr_accessor :source_uid

            # Embedded entities (lead/contact/company)
            sig do
              returns(
                T.nilable(
                  Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded
                )
              )
            end
            attr_reader :_embedded

            sig do
              params(
                _embedded:
                  Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::OrHash
              ).void
            end
            attr_writer :_embedded

            # Unix timestamp (seconds) when the form entry was created
            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            # Pipeline id to place the created lead into
            sig { returns(T.nilable(Integer)) }
            attr_reader :pipeline_id

            sig { params(pipeline_id: Integer).void }
            attr_writer :pipeline_id

            # Your request id to match request items with response items
            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig do
              params(
                metadata:
                  Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata::OrHash,
                source_name: String,
                source_uid: String,
                _embedded:
                  Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::OrHash,
                created_at: Integer,
                pipeline_id: Integer,
                request_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Form metadata
              metadata:,
              # Human-readable source name shown in amoCRM (e.g. "Website form", "Landing page")
              source_name:,
              # Your stable id of the source: site/form/widget/integration that sent the lead
              source_uid:,
              # Embedded entities (lead/contact/company)
              _embedded: nil,
              # Unix timestamp (seconds) when the form entry was created
              created_at: nil,
              # Pipeline id to place the created lead into
              pipeline_id: nil,
              # Your request id to match request items with response items
              request_id: nil
            )
            end

            sig do
              override.returns(
                {
                  metadata:
                    Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata,
                  source_name: String,
                  source_uid: String,
                  _embedded:
                    Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded,
                  created_at: Integer,
                  pipeline_id: Integer,
                  request_id: String
                }
              )
            end
            def to_hash
            end

            class Metadata < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata,
                    Amocrm::Internal::AnyHash
                  )
                end

              # Form id in your system (string or numeric)
              sig do
                returns(
                  T.nilable(
                    Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata::FormID::Variants
                  )
                )
              end
              attr_reader :form_id

              sig do
                params(
                  form_id:
                    Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata::FormID::Variants
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

              # Form metadata
              sig do
                params(
                  form_id:
                    Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata::FormID::Variants,
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
                    form_id:
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata::FormID::Variants,
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

              # Form id in your system (string or numeric)
              module FormID
                extend Amocrm::Internal::Type::Union

                Variants = T.type_alias { T.any(String, Integer) }

                sig do
                  override.returns(
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata::FormID::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            class Embedded < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Company
                    ]
                  )
                )
              end
              attr_reader :companies

              sig do
                params(
                  companies:
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Company::OrHash
                    ]
                ).void
              end
              attr_writer :companies

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact
                    ]
                  )
                )
              end
              attr_reader :contacts

              sig do
                params(
                  contacts:
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::OrHash
                    ]
                ).void
              end
              attr_writer :contacts

              # Create related entities together with unsorted (lead/contact/company)
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead
                    ]
                  )
                )
              end
              attr_reader :leads

              sig do
                params(
                  leads:
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::OrHash
                    ]
                ).void
              end
              attr_writer :leads

              # Embedded entities (lead/contact/company)
              sig do
                params(
                  companies:
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Company::OrHash
                    ],
                  contacts:
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::OrHash
                    ],
                  leads:
                    T::Array[
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                companies: nil,
                contacts: nil,
                # Create related entities together with unsorted (lead/contact/company)
                leads: nil
              )
              end

              sig do
                override.returns(
                  {
                    companies:
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Company
                      ],
                    contacts:
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact
                      ],
                    leads:
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead
                      ]
                  }
                )
              end
              def to_hash
              end

              class Company < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Company,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig { params(name: String).returns(T.attached_class) }
                def self.new(name: nil)
                end

                sig { override.returns({ name: String }) }
                def to_hash
                end
              end

              class Contact < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact,
                      Amocrm::Internal::AnyHash
                    )
                  end

                # Custom fields payload (same as contact create API)
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue
                      ]
                    )
                  )
                end
                attr_reader :custom_fields_values

                sig do
                  params(
                    custom_fields_values:
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::OrHash
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
                    custom_fields_values:
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::OrHash
                      ],
                    first_name: String,
                    last_name: String,
                    name: String
                  ).returns(T.attached_class)
                end
                def self.new(
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
                      custom_fields_values:
                        T::Array[
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue
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
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue,
                        Amocrm::Internal::AnyHash
                      )
                    end

                  # Values for the field (multiple values allowed)
                  sig do
                    returns(
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value
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
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value::OrHash
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
                            Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value
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
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value,
                          Amocrm::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value::Value::Variants
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
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value::Value::Variants,
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
                            Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value::Value::Variants,
                          enum_code: String,
                          enum_id: Integer
                        }
                      )
                    end
                    def to_hash
                    end

                    module Value
                      extend Amocrm::Internal::Type::Union

                      Variants =
                        T.type_alias { T.any(String, Integer, T::Boolean) }

                      sig do
                        override.returns(
                          T::Array[
                            Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value::Value::Variants
                          ]
                        )
                      end
                      def self.variants
                      end
                    end
                  end
                end
              end

              class Lead < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded
                    )
                  )
                end
                attr_reader :_embedded

                sig do
                  params(
                    _embedded:
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::OrHash
                  ).void
                end
                attr_writer :_embedded

                # Custom fields payload (same as lead create API)
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue
                      ]
                    )
                  )
                end
                attr_reader :custom_fields_values

                sig do
                  params(
                    custom_fields_values:
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::OrHash
                      ]
                  ).void
                end
                attr_writer :custom_fields_values

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig { returns(T.nilable(Integer)) }
                attr_reader :price

                sig { params(price: Integer).void }
                attr_writer :price

                # Website visitor uid from tracking; links this lead to a site visit
                sig { returns(T.nilable(String)) }
                attr_reader :visitor_uid

                sig { params(visitor_uid: String).void }
                attr_writer :visitor_uid

                sig do
                  params(
                    _embedded:
                      Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::OrHash,
                    custom_fields_values:
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::OrHash
                      ],
                    name: String,
                    price: Integer,
                    visitor_uid: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  _embedded: nil,
                  # Custom fields payload (same as lead create API)
                  custom_fields_values: nil,
                  name: nil,
                  price: nil,
                  # Website visitor uid from tracking; links this lead to a site visit
                  visitor_uid: nil
                )
                end

                sig do
                  override.returns(
                    {
                      _embedded:
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded,
                      custom_fields_values:
                        T::Array[
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue
                        ],
                      name: String,
                      price: Integer,
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
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded,
                        Amocrm::Internal::AnyHash
                      )
                    end

                  # Tags to attach
                  sig do
                    returns(
                      T.nilable(
                        T::Array[
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag
                        ]
                      )
                    )
                  end
                  attr_reader :tags

                  sig do
                    params(
                      tags:
                        T::Array[
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag::OrHash
                        ]
                    ).void
                  end
                  attr_writer :tags

                  sig do
                    params(
                      tags:
                        T::Array[
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag::OrHash
                        ]
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Tags to attach
                    tags: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        tags:
                          T::Array[
                            Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag
                          ]
                      }
                    )
                  end
                  def to_hash
                  end

                  class Tag < Amocrm::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag,
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
                      params(id: Integer, name: String).returns(
                        T.attached_class
                      )
                    end
                    def self.new(id: nil, name: nil)
                    end

                    sig { override.returns({ id: Integer, name: String }) }
                    def to_hash
                    end
                  end
                end

                class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue,
                        Amocrm::Internal::AnyHash
                      )
                    end

                  # Values for the field (multiple values allowed)
                  sig do
                    returns(
                      T::Array[
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value
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
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value::OrHash
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
                            Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value
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
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value,
                          Amocrm::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value::Value::Variants
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
                          Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value::Value::Variants,
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
                            Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value::Value::Variants,
                          enum_code: String,
                          enum_id: Integer
                        }
                      )
                    end
                    def to_hash
                    end

                    module Value
                      extend Amocrm::Internal::Type::Union

                      Variants =
                        T.type_alias { T.any(String, Integer, T::Boolean) }

                      sig do
                        override.returns(
                          T::Array[
                            Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value::Value::Variants
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
        end
      end
    end
  end
end
