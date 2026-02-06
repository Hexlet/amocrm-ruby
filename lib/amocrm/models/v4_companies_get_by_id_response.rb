# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#companies_get_by_id
    module V4CompaniesGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4CompaniesGetByIDResponse::Company }

      variant -> { Amocrm::Models::V4CompaniesGetByIDResponse::Problem }

      class Company < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded }

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
        #   @return [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::CustomFieldsValue>, nil]
        optional :custom_fields_values,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CompaniesGetByIDResponse::Company::CustomFieldsValue] },
                 nil?: true

        # @!attribute group_id
        #
        #   @return [Integer, nil]
        optional :group_id, Integer

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

        # @!method initialize(id: nil, _embedded: nil, _links: nil, account_id: nil, closest_task_at: nil, created_at: nil, created_by: nil, custom_fields_values: nil, group_id: nil, name: nil, responsible_user_id: nil, updated_at: nil, updated_by: nil)
        #   @param id [Integer]
        #   @param _embedded [Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded]
        #   @param _links [Object]
        #   @param account_id [Integer]
        #   @param closest_task_at [Integer]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param custom_fields_values [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::CustomFieldsValue>, nil]
        #   @param group_id [Integer]
        #   @param name [String]
        #   @param responsible_user_id [Integer]
        #   @param updated_at [Integer]
        #   @param updated_by [Integer]

        # @see Amocrm::Models::V4CompaniesGetByIDResponse::Company#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute catalog_elements
          #
          #   @return [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::CatalogElement>, nil]
          optional :catalog_elements,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::CatalogElement] }

          # @!attribute contacts
          #
          #   @return [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Contact>, nil]
          optional :contacts,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Contact] }

          # @!attribute customers
          #
          #   @return [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Customer>, nil]
          optional :customers,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Customer] }

          # @!attribute leads
          #
          #   @return [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Lead>, nil]
          optional :leads,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Lead] }

          # @!attribute tags
          #
          #   @return [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Tag>, nil]
          optional :tags,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Tag] }

          # @!method initialize(catalog_elements: nil, contacts: nil, customers: nil, leads: nil, tags: nil)
          #   @param catalog_elements [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::CatalogElement>]
          #   @param contacts [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Contact>]
          #   @param customers [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Customer>]
          #   @param leads [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Lead>]
          #   @param tags [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::Embedded::Tag>]

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

          class Contact < Amocrm::Internal::Type::BaseModel
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
          #   @return [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::CustomFieldsValue::Value>]
          required :values,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CompaniesGetByIDResponse::Company::CustomFieldsValue::Value] }

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
          #   @param values [Array<Amocrm::Models::V4CompaniesGetByIDResponse::Company::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
          #
          #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
          #
          #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

          class Value < Amocrm::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [String, Integer, Boolean]
            required :value,
                     union: -> { Amocrm::Models::V4CompaniesGetByIDResponse::Company::CustomFieldsValue::Value::Value }

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

            # @see Amocrm::Models::V4CompaniesGetByIDResponse::Company::CustomFieldsValue::Value#value
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
      #   @return [Array(Amocrm::Models::V4CompaniesGetByIDResponse::Company, Amocrm::Models::V4CompaniesGetByIDResponse::Problem)]
    end
  end
end
