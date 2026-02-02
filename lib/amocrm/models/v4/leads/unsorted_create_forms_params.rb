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

              class Contact < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

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

                # @!method initialize(id: nil, custom_fields_values: nil, first_name: nil, last_name: nil, name: nil)
                #   @param id [Integer]
                #
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
                #   Embedded entities (lead/contact/company/source)
                #
                #   @return [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded, nil]
                optional :_embedded, -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded }

                # @!attribute closed_at
                #
                #   @return [Integer, nil]
                optional :closed_at, Integer

                # @!attribute created_at
                #
                #   @return [Integer, nil]
                optional :created_at, Integer

                # @!attribute created_by
                #
                #   @return [Integer, nil]
                optional :created_by, Integer

                # @!attribute custom_fields_values
                #   Custom fields payload
                #
                #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue>, nil]
                optional :custom_fields_values,
                         -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue] }

                # @!attribute group_id
                #
                #   @return [Integer, nil]
                optional :group_id, Integer

                # @!attribute loss_reason_id
                #
                #   @return [Integer, nil]
                optional :loss_reason_id, Integer

                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!attribute pipeline_id
                #
                #   @return [Integer, nil]
                optional :pipeline_id, Integer

                # @!attribute price
                #
                #   @return [Integer, nil]
                optional :price, Integer

                # @!attribute request_id
                #   Client-side request id
                #
                #   @return [String, nil]
                optional :request_id, String

                # @!attribute responsible_user_id
                #
                #   @return [Integer, nil]
                optional :responsible_user_id, Integer

                # @!attribute status_id
                #
                #   @return [Integer, nil]
                optional :status_id, Integer

                # @!attribute tags_to_add
                #   Tags to attach
                #
                #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::TagsToAdd>, nil]
                optional :tags_to_add,
                         -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::TagsToAdd] }

                # @!attribute updated_at
                #
                #   @return [Integer, nil]
                optional :updated_at, Integer

                # @!attribute updated_by
                #
                #   @return [Integer, nil]
                optional :updated_by, Integer

                # @!attribute visitor_uid
                #   Website visitor uid from tracking; links this lead to a site visit
                #
                #   @return [String, nil]
                optional :visitor_uid, String

                # @!method initialize(_embedded: nil, closed_at: nil, created_at: nil, created_by: nil, custom_fields_values: nil, group_id: nil, loss_reason_id: nil, name: nil, pipeline_id: nil, price: nil, request_id: nil, responsible_user_id: nil, status_id: nil, tags_to_add: nil, updated_at: nil, updated_by: nil, visitor_uid: nil)
                #   @param _embedded [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded] Embedded entities (lead/contact/company/source)
                #
                #   @param closed_at [Integer]
                #
                #   @param created_at [Integer]
                #
                #   @param created_by [Integer]
                #
                #   @param custom_fields_values [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::CustomFieldsValue>] Custom fields payload
                #
                #   @param group_id [Integer]
                #
                #   @param loss_reason_id [Integer]
                #
                #   @param name [String]
                #
                #   @param pipeline_id [Integer]
                #
                #   @param price [Integer]
                #
                #   @param request_id [String] Client-side request id
                #
                #   @param responsible_user_id [Integer]
                #
                #   @param status_id [Integer]
                #
                #   @param tags_to_add [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::TagsToAdd>] Tags to attach
                #
                #   @param updated_at [Integer]
                #
                #   @param updated_by [Integer]
                #
                #   @param visitor_uid [String] Website visitor uid from tracking; links this lead to a site visit

                # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead#_embedded
                class Embedded < Amocrm::Internal::Type::BaseModel
                  # @!attribute companies
                  #
                  #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Company>, nil]
                  optional :companies,
                           -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Company] }

                  # @!attribute contacts
                  #
                  #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact>, nil]
                  optional :contacts,
                           -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact] }

                  # @!attribute metadata
                  #
                  #   @return [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata, nil]
                  optional :metadata,
                           -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata }

                  # @!attribute source
                  #
                  #   @return [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Source, nil]
                  optional :source,
                           -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Source }

                  # @!attribute tags
                  #
                  #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag>, nil]
                  optional :tags,
                           -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag] }

                  # @!method initialize(companies: nil, contacts: nil, metadata: nil, source: nil, tags: nil)
                  #   Embedded entities (lead/contact/company/source)
                  #
                  #   @param companies [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Company>]
                  #   @param contacts [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact>]
                  #   @param metadata [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata]
                  #   @param source [Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Source]
                  #   @param tags [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Tag>]

                  class Company < Amocrm::Internal::Type::BaseModel
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

                  class Contact < Amocrm::Internal::Type::BaseModel
                    # @!attribute id
                    #
                    #   @return [Integer, nil]
                    optional :id, Integer

                    # @!attribute custom_fields_values
                    #   Custom fields payload (same as contact create API)
                    #
                    #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact::CustomFieldsValue>, nil]
                    optional :custom_fields_values,
                             -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact::CustomFieldsValue] }

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

                    # @!method initialize(id: nil, custom_fields_values: nil, first_name: nil, last_name: nil, name: nil)
                    #   @param id [Integer]
                    #
                    #   @param custom_fields_values [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact::CustomFieldsValue>] Custom fields payload (same as contact create API)
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
                      #   @return [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact::CustomFieldsValue::Value>]
                      required :values,
                               -> do
                                 Amocrm::Internal::Type::ArrayOf[
                                   Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact::CustomFieldsValue::Value
                                 ]
                               end

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
                      #   @param values [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
                      #
                      #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
                      #
                      #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

                      class Value < Amocrm::Internal::Type::BaseModel
                        # @!attribute value
                        #
                        #   @return [String, Integer, Boolean]
                        required :value,
                                 union: -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact::CustomFieldsValue::Value::Value }

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

                        # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Contact::CustomFieldsValue::Value#value
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

                  # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded#metadata
                  class Metadata < Amocrm::Internal::Type::BaseModel
                    # @!attribute category
                    #   Unsorted category
                    #
                    #   @return [Symbol, Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata::Category, nil]
                    optional :category,
                             enum: -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata::Category }

                    # @!attribute form_id
                    #   Form id in your system (string or numeric)
                    #
                    #   @return [String, Integer, nil]
                    optional :form_id,
                             union: -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata::FormID }

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

                    # @!method initialize(category: nil, form_id: nil, form_name: nil, form_page: nil, form_sent_at: nil, form_type: nil, ip: nil, referer: nil, visitor_uid: nil)
                    #   @param category [Symbol, Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata::Category] Unsorted category
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

                    # Unsorted category
                    #
                    # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata#category
                    module Category
                      extend Amocrm::Internal::Type::Enum

                      SIP = :sip
                      FORMS = :forms
                      CHATS = :chats
                      MAIL = :mail

                      # @!method self.values
                      #   @return [Array<Symbol>]
                    end

                    # Form id in your system (string or numeric)
                    #
                    # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Metadata#form_id
                    module FormID
                      extend Amocrm::Internal::Type::Union

                      variant String

                      variant Integer

                      # @!method self.variants
                      #   @return [Array(String, Integer)]
                    end
                  end

                  # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded#source
                  class Source < Amocrm::Internal::Type::BaseModel
                    # @!attribute external_id
                    #   External id in your system
                    #
                    #   @return [String, Integer, Boolean, nil]
                    optional :external_id,
                             union: -> { Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Source::ExternalID }

                    # @!attribute type
                    #   Source type
                    #
                    #   @return [String, nil]
                    optional :type, String

                    # @!method initialize(external_id: nil, type: nil)
                    #   @param external_id [String, Integer, Boolean] External id in your system
                    #
                    #   @param type [String] Source type

                    # External id in your system
                    #
                    # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body::Embedded::Lead::Embedded::Source#external_id
                    module ExternalID
                      extend Amocrm::Internal::Type::Union

                      variant String

                      variant Integer

                      variant Amocrm::Internal::Type::Boolean

                      # @!method self.variants
                      #   @return [Array(String, Integer, Boolean)]
                    end
                  end

                  class Tag < Amocrm::Internal::Type::BaseModel
                    # @!attribute id
                    #
                    #   @return [Integer, nil]
                    optional :id, Integer

                    # @!attribute color
                    #
                    #   @return [String, nil]
                    optional :color, String

                    # @!attribute name
                    #
                    #   @return [String, nil]
                    optional :name, String

                    # @!method initialize(id: nil, color: nil, name: nil)
                    #   @param id [Integer]
                    #   @param color [String]
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

                class TagsToAdd < Amocrm::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [Integer, nil]
                  optional :id, Integer

                  # @!attribute color
                  #
                  #   @return [String, nil]
                  optional :color, String

                  # @!attribute name
                  #
                  #   @return [String, nil]
                  optional :name, String

                  # @!method initialize(id: nil, color: nil, name: nil)
                  #   @param id [Integer]
                  #   @param color [String]
                  #   @param name [String]
                end
              end
            end
          end
        end
      end
    end
  end
end
