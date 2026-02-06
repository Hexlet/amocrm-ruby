# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#contacts_list
    module V4ContactsListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4ContactsListResponse::ContactListResponse }

      variant -> { Amocrm::Models::V4ContactsListResponse::Problem }

      class ContactListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::V4ContactsListResponse::ContactListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute contacts
          #
          #   @return [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact>, nil]
          optional :contacts,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact] }

          # @!method initialize(contacts: nil)
          #   @param contacts [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact>]

          class Contact < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded, nil]
            optional :_embedded,
                     -> { Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded }

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute account_id
            #
            #   @return [Integer, nil]
            optional :account_id, Integer

            # @!attribute closest_task_at
            #
            #   @return [Integer, nil]
            optional :closest_task_at, Integer

            # @!attribute created_at
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute created_by
            #
            #   @return [Integer, nil]
            optional :created_by, Integer

            # @!attribute custom_fields_values
            #
            #   @return [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue>, nil]
            optional :custom_fields_values,
                     -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue] },
                     nil?: true

            # @!attribute first_name
            #
            #   @return [String, nil]
            optional :first_name, String

            # @!attribute group_id
            #
            #   @return [Integer, nil]
            optional :group_id, Integer

            # @!attribute is_unsorted
            #
            #   @return [Boolean, nil]
            optional :is_unsorted, Amocrm::Internal::Type::Boolean

            # @!attribute last_name
            #
            #   @return [String, nil]
            optional :last_name, String

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute responsible_user_id
            #
            #   @return [Integer, nil]
            optional :responsible_user_id, Integer

            # @!attribute updated_at
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!attribute updated_by
            #
            #   @return [Integer, nil]
            optional :updated_by, Integer

            # @!method initialize(id: nil, _embedded: nil, _links: nil, account_id: nil, closest_task_at: nil, created_at: nil, created_by: nil, custom_fields_values: nil, first_name: nil, group_id: nil, is_unsorted: nil, last_name: nil, name: nil, responsible_user_id: nil, updated_at: nil, updated_by: nil)
            #   @param id [Integer]
            #   @param _embedded [Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded]
            #   @param _links [Object]
            #   @param account_id [Integer]
            #   @param closest_task_at [Integer]
            #   @param created_at [Integer]
            #   @param created_by [Integer]
            #   @param custom_fields_values [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue>, nil]
            #   @param first_name [String]
            #   @param group_id [Integer]
            #   @param is_unsorted [Boolean]
            #   @param last_name [String]
            #   @param name [String]
            #   @param responsible_user_id [Integer]
            #   @param updated_at [Integer]
            #   @param updated_by [Integer]

            # @see Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute catalog_elements
              #
              #   @return [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::CatalogElement>, nil]
              optional :catalog_elements,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::CatalogElement] }

              # @!attribute companies
              #
              #   @return [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Company>, nil]
              optional :companies,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Company] }

              # @!attribute customers
              #
              #   @return [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Customer>, nil]
              optional :customers,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Customer] }

              # @!attribute leads
              #
              #   @return [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Lead>, nil]
              optional :leads,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Lead] }

              # @!attribute social_profiles
              #
              #   @return [Array<Object>, nil]
              optional :social_profiles, Amocrm::Internal::Type::ArrayOf[Amocrm::Internal::Type::Unknown]

              # @!attribute tags
              #
              #   @return [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Tag>, nil]
              optional :tags,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Tag] }

              # @!method initialize(catalog_elements: nil, companies: nil, customers: nil, leads: nil, social_profiles: nil, tags: nil)
              #   @param catalog_elements [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::CatalogElement>]
              #   @param companies [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Company>]
              #   @param customers [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Customer>]
              #   @param leads [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Lead>]
              #   @param social_profiles [Array<Object>]
              #   @param tags [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::Embedded::Tag>]

              class CatalogElement < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute _links
                #
                #   @return [Object, nil]
                optional :_links, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, _links: nil)
                #   @param id [Integer]
                #   @param _links [Object]
              end

              class Company < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute _links
                #
                #   @return [Object, nil]
                optional :_links, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, _links: nil)
                #   @param id [Integer]
                #   @param _links [Object]
              end

              class Customer < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute _links
                #
                #   @return [Object, nil]
                optional :_links, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, _links: nil)
                #   @param id [Integer]
                #   @param _links [Object]
              end

              class Lead < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute _links
                #
                #   @return [Object, nil]
                optional :_links, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, _links: nil)
                #   @param id [Integer]
                #   @param _links [Object]
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
              #   @return [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value>]
              required :values,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value] }

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
              #   @param values [Array<Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
              #
              #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
              #
              #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

              class Value < Amocrm::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [String, Integer, Boolean]
                required :value,
                         union: -> { Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value::Value }

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

                # @see Amocrm::Models::V4ContactsListResponse::ContactListResponse::Embedded::Contact::CustomFieldsValue::Value#value
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

      class Problem < Amocrm::Internal::Type::BaseModel
        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(detail: nil, status: nil, title: nil, type: nil)
        #   @param detail [String]
        #   @param status [Integer]
        #   @param title [String]
        #   @param type [String]
      end

      # @!method self.variants
      #   @return [Array(Amocrm::Models::V4ContactsListResponse::ContactListResponse, Amocrm::Models::V4ContactsListResponse::Problem)]
    end
  end
end
