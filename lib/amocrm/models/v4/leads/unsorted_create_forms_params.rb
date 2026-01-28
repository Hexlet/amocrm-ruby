# frozen_string_literal: true

module Amocrm
  module Models
    module V4
      module Leads
        # @see Amocrm::Resources::V4::Leads::Unsorted#create_forms
        class UnsortedCreateFormsParams < Amocrm::Internal::Type::BaseModel
          extend Amocrm::Internal::Type::RequestParameters::Converter
          include Amocrm::Internal::Type::RequestParameters

          # @!attribute body
          #
          #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body>]
          required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body] }

          # @!method initialize(body:, request_options: {})
          #   @param body [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body>]
          #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

          class Body < Amocrm::Internal::Type::BaseModel
            # @!attribute metadata
            #   Form metadata
            #
            #   @return [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Metadata]
            required :metadata, -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata }

            # @!attribute source_name
            #   Human-readable source name shown in amoCRM (e.g. "Website form", "Landing page")
            #
            #   @return [String]
            required :source_name, String

            # @!attribute source_uid
            #   Your stable id of the source: site/form/widget/integration that sent the lead
            #
            #   @return [String]
            required :source_uid, String

            # @!attribute _embedded
            #   Embedded entities (lead/contact/company)
            #
            #   @return [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded, nil]
            optional :_embedded, -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded }

            # @!attribute created_at
            #   Unix timestamp (seconds) when the form entry was created
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute pipeline_id
            #   Pipeline id to place the created lead into
            #
            #   @return [Integer, nil]
            optional :pipeline_id, Integer

            # @!attribute request_id
            #   Your request id to match request items with response items
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!method initialize(metadata:, source_name:, source_uid:, _embedded: nil, created_at: nil, pipeline_id: nil, request_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body} for more details.
            #
            #   @param metadata [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Metadata] Form metadata
            #
            #   @param source_name [String] Human-readable source name shown in amoCRM (e.g. "Website form", "Landing page")
            #
            #   @param source_uid [String] Your stable id of the source: site/form/widget/integration that sent the lead
            #
            #   @param _embedded [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded] Embedded entities (lead/contact/company)
            #
            #   @param created_at [Integer] Unix timestamp (seconds) when the form entry was created
            #
            #   @param pipeline_id [Integer] Pipeline id to place the created lead into
            #
            #   @param request_id [String] Your request id to match request items with response items

            # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body#metadata
            class Metadata < Amocrm::Internal::Type::BaseModel
              # @!attribute form_id
              #   Form id in your system (string or numeric)
              #
              #   @return [String, Integer, nil]
              optional :form_id, union: -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Metadata::FormID }

              # @!attribute form_name
              #   Form name (shown in amoCRM)
              #
              #   @return [String, nil]
              optional :form_name, String

              # @!attribute form_page
              #   Page URL where form lives
              #
              #   @return [String, nil]
              optional :form_page, String

              # @!attribute form_sent_at
              #   Unix timestamp (seconds) when the form was submitted
              #
              #   @return [Integer, nil]
              optional :form_sent_at, Integer

              # @!attribute form_type
              #   Form type code from amoCRM, use only if you know it
              #
              #   @return [Integer, nil]
              optional :form_type, Integer

              # @!attribute ip
              #   IP address of the submitter
              #
              #   @return [String, nil]
              optional :ip, String

              # @!attribute referer
              #   Referrer URL
              #
              #   @return [String, nil]
              optional :referer, String

              # @!attribute visitor_uid
              #   Visitor uid from tracking, if you have it
              #
              #   @return [String, nil]
              optional :visitor_uid, String

              # @!method initialize(form_id: nil, form_name: nil, form_page: nil, form_sent_at: nil, form_type: nil, ip: nil, referer: nil, visitor_uid: nil)
              #   Form metadata
              #
              #   @param form_id [String, Integer] Form id in your system (string or numeric)
              #
              #   @param form_name [String] Form name (shown in amoCRM)
              #
              #   @param form_page [String] Page URL where form lives
              #
              #   @param form_sent_at [Integer] Unix timestamp (seconds) when the form was submitted
              #
              #   @param form_type [Integer] Form type code from amoCRM, use only if you know it
              #
              #   @param ip [String] IP address of the submitter
              #
              #   @param referer [String] Referrer URL
              #
              #   @param visitor_uid [String] Visitor uid from tracking, if you have it

              # Form id in your system (string or numeric)
              #
              # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Metadata#form_id
              module FormID
                extend Amocrm::Internal::Type::Union

                variant String

                variant Integer

                # @!method self.variants
                #   @return [Array(String, Integer)]
              end
            end

            # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute companies
              #
              #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Company>, nil]
              optional :companies,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Company] }

              # @!attribute contacts
              #
              #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact>, nil]
              optional :contacts,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact] }

              # @!attribute leads
              #   Create related entities together with unsorted (lead/contact/company)
              #
              #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead>, nil]
              optional :leads,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead] }

              # @!method initialize(companies: nil, contacts: nil, leads: nil)
              #   Embedded entities (lead/contact/company)
              #
              #   @param companies [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Company>]
              #
              #   @param contacts [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact>]
              #
              #   @param leads [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead>] Create related entities together with unsorted (lead/contact/company)

              class Company < Amocrm::Internal::Type::BaseModel
                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(name: nil)
                #   @param name [String]
              end

              class Contact < Amocrm::Internal::Type::BaseModel
                # @!attribute custom_fields_values
                #   Custom fields payload (same as contact create API)
                #
                #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue>, nil]
                optional :custom_fields_values,
                         -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue] }

                # @!attribute first_name
                #
                #   @return [String, nil]
                optional :first_name, String

                # @!attribute last_name
                #
                #   @return [String, nil]
                optional :last_name, String

                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(custom_fields_values: nil, first_name: nil, last_name: nil, name: nil)
                #   @param custom_fields_values [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue>] Custom fields payload (same as contact create API)
                #
                #   @param first_name [String]
                #
                #   @param last_name [String]
                #
                #   @param name [String]

                class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
                  # @!attribute values
                  #   Values for the field (multiple values allowed)
                  #
                  #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value>]
                  required :values,
                           -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value] }

                  # @!attribute field_code
                  #   Field code (e.g. PHONE/EMAIL)
                  #
                  #   @return [String, nil]
                  optional :field_code, String

                  # @!attribute field_id
                  #   Use either field_id or field_code (e.g. PHONE/EMAIL)
                  #
                  #   @return [Integer, nil]
                  optional :field_id, Integer

                  # @!method initialize(values:, field_code: nil, field_id: nil)
                  #   @param values [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
                  #
                  #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
                  #
                  #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

                  class Value < Amocrm::Internal::Type::BaseModel
                    # @!attribute value
                    #
                    #   @return [String, Integer, Boolean]
                    required :value,
                             union: -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value::Value }

                    # @!attribute enum_code
                    #   Option code for list/select custom fields (if you use code instead of id)
                    #
                    #   @return [String, nil]
                    optional :enum_code, String

                    # @!attribute enum_id
                    #   Option id for list/select custom fields (one of predefined options)
                    #
                    #   @return [Integer, nil]
                    optional :enum_id, Integer

                    # @!method initialize(value:, enum_code: nil, enum_id: nil)
                    #   @param value [String, Integer, Boolean]
                    #
                    #   @param enum_code [String] Option code for list/select custom fields (if you use code instead of id)
                    #
                    #   @param enum_id [Integer] Option id for list/select custom fields (one of predefined options)

                    # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Contact::CustomFieldsValue::Value#value
                    module Value
                      extend Amocrm::Internal::Type::Union

                      variant String

                      variant Integer

                      variant Amocrm::Internal::Type::Boolean

                      # @!method self.variants
                      #   @return [Array(String, Integer, Boolean)]
                    end
                  end
                end
              end

              class Lead < Amocrm::Internal::Type::BaseModel
                # @!attribute _embedded
                #
                #   @return [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded, nil]
                optional :_embedded, -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded }

                # @!attribute custom_fields_values
                #   Custom fields payload (same as lead create API)
                #
                #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue>, nil]
                optional :custom_fields_values,
                         -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue] }

                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!attribute price
                #
                #   @return [Integer, nil]
                optional :price, Integer

                # @!attribute visitor_uid
                #   Website visitor uid from tracking; links this lead to a site visit
                #
                #   @return [String, nil]
                optional :visitor_uid, String

                # @!method initialize(_embedded: nil, custom_fields_values: nil, name: nil, price: nil, visitor_uid: nil)
                #   @param _embedded [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded]
                #
                #   @param custom_fields_values [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue>] Custom fields payload (same as lead create API)
                #
                #   @param name [String]
                #
                #   @param price [Integer]
                #
                #   @param visitor_uid [String] Website visitor uid from tracking; links this lead to a site visit

                # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead#_embedded
                class Embedded < Amocrm::Internal::Type::BaseModel
                  # @!attribute tags
                  #   Tags to attach
                  #
                  #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag>, nil]
                  optional :tags,
                           -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag] }

                  # @!method initialize(tags: nil)
                  #   @param tags [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag>] Tags to attach

                  class Tag < Amocrm::Internal::Type::BaseModel
                    # @!attribute id
                    #
                    #   @return [Integer, nil]
                    optional :id, Integer

                    # @!attribute name
                    #
                    #   @return [String, nil]
                    optional :name, String

                    # @!method initialize(id: nil, name: nil)
                    #   @param id [Integer]
                    #   @param name [String]
                  end
                end

                class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
                  # @!attribute values
                  #   Values for the field (multiple values allowed)
                  #
                  #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value>]
                  required :values,
                           -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value] }

                  # @!attribute field_code
                  #   Field code (e.g. PHONE/EMAIL)
                  #
                  #   @return [String, nil]
                  optional :field_code, String

                  # @!attribute field_id
                  #   Use either field_id or field_code (e.g. PHONE/EMAIL)
                  #
                  #   @return [Integer, nil]
                  optional :field_id, Integer

                  # @!method initialize(values:, field_code: nil, field_id: nil)
                  #   @param values [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
                  #
                  #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
                  #
                  #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

                  class Value < Amocrm::Internal::Type::BaseModel
                    # @!attribute value
                    #
                    #   @return [String, Integer, Boolean]
                    required :value,
                             union: -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value::Value }

                    # @!attribute enum_code
                    #   Option code for list/select custom fields (if you use code instead of id)
                    #
                    #   @return [String, nil]
                    optional :enum_code, String

                    # @!attribute enum_id
                    #   Option id for list/select custom fields (one of predefined options)
                    #
                    #   @return [Integer, nil]
                    optional :enum_id, Integer

                    # @!method initialize(value:, enum_code: nil, enum_id: nil)
                    #   @param value [String, Integer, Boolean]
                    #
                    #   @param enum_code [String] Option code for list/select custom fields (if you use code instead of id)
                    #
                    #   @param enum_id [Integer] Option id for list/select custom fields (one of predefined options)

                    # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue::Value#value
                    module Value
                      extend Amocrm::Internal::Type::Union

                      variant String

                      variant Integer

                      variant Amocrm::Internal::Type::Boolean

                      # @!method self.variants
                      #   @return [Array(String, Integer, Boolean)]
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
