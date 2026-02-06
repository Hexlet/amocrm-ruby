# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CatalogElements#get_by_id
    module CatalogElementGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement }

      variant -> { Amocrm::Models::CatalogElementGetByIDResponse::Problem }

      class CatalogElement < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute account_id
        #
        #   @return [Integer, nil]
        optional :account_id, Integer

        # @!attribute catalog_id
        #
        #   @return [Integer, nil]
        optional :catalog_id, Integer

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
        #   @return [Array<Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::CustomFieldsValue>, nil]
        optional :custom_fields_values,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::CustomFieldsValue] },
                 nil?: true

        # @!attribute invoice_link
        #
        #   @return [String, nil]
        optional :invoice_link, String, nil?: true

        # @!attribute is_deleted
        #
        #   @return [Boolean, nil]
        optional :is_deleted, Amocrm::Internal::Type::Boolean

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!method initialize(id: nil, _embedded: nil, _links: nil, account_id: nil, catalog_id: nil, created_at: nil, created_by: nil, custom_fields_values: nil, invoice_link: nil, is_deleted: nil, name: nil, updated_at: nil, updated_by: nil)
        #   @param id [Integer]
        #   @param _embedded [Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::Embedded]
        #   @param _links [Object]
        #   @param account_id [Integer]
        #   @param catalog_id [Integer]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param custom_fields_values [Array<Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::CustomFieldsValue>, nil]
        #   @param invoice_link [String, nil]
        #   @param is_deleted [Boolean]
        #   @param name [String]
        #   @param updated_at [Integer]
        #   @param updated_by [Integer]

        # @see Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute warning
          #
          #   @return [Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::Embedded::Warning, nil]
          optional :warning,
                   -> { Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::Embedded::Warning },
                   nil?: true

          # @!method initialize(warning: nil)
          #   @param warning [Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::Embedded::Warning, nil]

          # @see Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::Embedded#warning
          class Warning < Amocrm::Internal::Type::BaseModel
            # @!attribute message
            #
            #   @return [String, nil]
            optional :message, String, nil?: true

            # @!method initialize(message: nil)
            #   @param message [String, nil]
          end
        end

        class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
          # @!attribute values
          #
          #   @return [Array<Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::CustomFieldsValue::Value>]
          required :values,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::CustomFieldsValue::Value] }

          # @!attribute field_code
          #
          #   @return [String, nil]
          optional :field_code, String

          # @!attribute field_id
          #
          #   @return [Integer, nil]
          optional :field_id, Integer

          # @!attribute field_name
          #
          #   @return [String, nil]
          optional :field_name, String

          # @!attribute field_type
          #
          #   @return [String, nil]
          optional :field_type, String

          # @!method initialize(values:, field_code: nil, field_id: nil, field_name: nil, field_type: nil)
          #   @param values [Array<Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement::CustomFieldsValue::Value>]
          #   @param field_code [String]
          #   @param field_id [Integer]
          #   @param field_name [String]
          #   @param field_type [String]

          class Value < Amocrm::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Object]
            required :value, Amocrm::Internal::Type::Unknown

            # @!attribute enum_code
            #
            #   @return [String, nil]
            optional :enum_code, String

            # @!attribute enum_id
            #
            #   @return [Integer, nil]
            optional :enum_id, Integer

            # @!method initialize(value:, enum_code: nil, enum_id: nil)
            #   @param value [Object]
            #   @param enum_code [String]
            #   @param enum_id [Integer]
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
      #   @return [Array(Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement, Amocrm::Models::CatalogElementGetByIDResponse::Problem)]
    end
  end
end
