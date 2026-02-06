# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Leads#create_complex
    class LeadCreateComplexParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::LeadCreateComplexParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #   Embedded entities (lead/contact/company/source)
        #
        #   @return [Amocrm::Models::LeadCreateComplexParams::Body::Embedded, nil]
        optional :_embedded, -> { Amocrm::LeadCreateComplexParams::Body::Embedded }

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
        #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body::CustomFieldsValue>, nil]
        optional :custom_fields_values,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body::CustomFieldsValue] }

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
        #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body::TagsToAdd>, nil]
        optional :tags_to_add,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body::TagsToAdd] }

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
        #   @param _embedded [Amocrm::Models::LeadCreateComplexParams::Body::Embedded] Embedded entities (lead/contact/company/source)
        #
        #   @param closed_at [Integer]
        #
        #   @param created_at [Integer]
        #
        #   @param created_by [Integer]
        #
        #   @param custom_fields_values [Array<Amocrm::Models::LeadCreateComplexParams::Body::CustomFieldsValue>] Custom fields payload
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
        #   @param tags_to_add [Array<Amocrm::Models::LeadCreateComplexParams::Body::TagsToAdd>] Tags to attach
        #
        #   @param updated_at [Integer]
        #
        #   @param updated_by [Integer]
        #
        #   @param visitor_uid [String] Website visitor uid from tracking; links this lead to a site visit

        # @see Amocrm::Models::LeadCreateComplexParams::Body#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute companies
          #
          #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Company>, nil]
          optional :companies,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body::Embedded::Company] }

          # @!attribute contacts
          #
          #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Contact>, nil]
          optional :contacts,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body::Embedded::Contact] }

          # @!attribute metadata
          #
          #   @return [Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Metadata, nil]
          optional :metadata, -> { Amocrm::LeadCreateComplexParams::Body::Embedded::Metadata }

          # @!attribute source
          #
          #   @return [Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Source, nil]
          optional :source, -> { Amocrm::LeadCreateComplexParams::Body::Embedded::Source }

          # @!attribute tags
          #
          #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Tag>, nil]
          optional :tags,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body::Embedded::Tag] }

          # @!method initialize(companies: nil, contacts: nil, metadata: nil, source: nil, tags: nil)
          #   Embedded entities (lead/contact/company/source)
          #
          #   @param companies [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Company>]
          #   @param contacts [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Contact>]
          #   @param metadata [Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Metadata]
          #   @param source [Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Source]
          #   @param tags [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Tag>]

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
            #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Contact::CustomFieldsValue>, nil]
            optional :custom_fields_values,
                     -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body::Embedded::Contact::CustomFieldsValue] }

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
            #   @param custom_fields_values [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Contact::CustomFieldsValue>] Custom fields payload (same as contact create API)
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
              #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Contact::CustomFieldsValue::Value>]
              required :values,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body::Embedded::Contact::CustomFieldsValue::Value] }

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
              #   @param values [Array<Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Contact::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
              #
              #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
              #
              #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

              class Value < Amocrm::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [String, Integer, Boolean]
                required :value,
                         union: -> { Amocrm::LeadCreateComplexParams::Body::Embedded::Contact::CustomFieldsValue::Value::Value }

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

                # @see Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Contact::CustomFieldsValue::Value#value
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

          # @see Amocrm::Models::LeadCreateComplexParams::Body::Embedded#metadata
          class Metadata < Amocrm::Internal::Type::BaseModel
            # @!attribute category
            #   Unsorted category
            #
            #   @return [Symbol, Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Metadata::Category, nil]
            optional :category, enum: -> { Amocrm::LeadCreateComplexParams::Body::Embedded::Metadata::Category }

            # @!attribute form_id
            #   Form id in your system (string or numeric)
            #
            #   @return [String, Integer, nil]
            optional :form_id, union: -> { Amocrm::LeadCreateComplexParams::Body::Embedded::Metadata::FormID }

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
            #   @param category [Symbol, Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Metadata::Category] Unsorted category
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
            # @see Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Metadata#category
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
            # @see Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Metadata#form_id
            module FormID
              extend Amocrm::Internal::Type::Union

              variant String

              variant Integer

              # @!method self.variants
              #   @return [Array(String, Integer)]
            end
          end

          # @see Amocrm::Models::LeadCreateComplexParams::Body::Embedded#source
          class Source < Amocrm::Internal::Type::BaseModel
            # @!attribute external_id
            #   External id in your system
            #
            #   @return [String, Integer, Boolean, nil]
            optional :external_id, union: -> { Amocrm::LeadCreateComplexParams::Body::Embedded::Source::ExternalID }

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
            # @see Amocrm::Models::LeadCreateComplexParams::Body::Embedded::Source#external_id
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
          #   @return [Array<Amocrm::Models::LeadCreateComplexParams::Body::CustomFieldsValue::Value>]
          required :values,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::LeadCreateComplexParams::Body::CustomFieldsValue::Value] }

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
          #   @param values [Array<Amocrm::Models::LeadCreateComplexParams::Body::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
          #
          #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
          #
          #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

          class Value < Amocrm::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [String, Integer, Boolean]
            required :value, union: -> { Amocrm::LeadCreateComplexParams::Body::CustomFieldsValue::Value::Value }

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

            # @see Amocrm::Models::LeadCreateComplexParams::Body::CustomFieldsValue::Value#value
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
