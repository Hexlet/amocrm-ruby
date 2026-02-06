# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#catalog_elements_update
    module APICatalogElementsUpdateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse }

      variant -> { Amocrm::Models::APICatalogElementsUpdateResponse::Problem }

      class CatalogElementUpdateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute elements
          #
          #   @return [Array<Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element>, nil]
          optional :elements,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element] }

          # @!method initialize(elements: nil)
          #   @param elements [Array<Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element>]

          class Element < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::Embedded, nil]
            optional :_embedded,
                     -> { Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::Embedded }

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
            #   @return [Array<Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::CustomFieldsValue>, nil]
            optional :custom_fields_values,
                     -> do
                       Amocrm::Internal::Type::ArrayOf[
                         Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::CustomFieldsValue
                       ]
                     end,
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

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!attribute updated_at
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!attribute updated_by
            #
            #   @return [Integer, nil]
            optional :updated_by, Integer

            # @!method initialize(id: nil, _embedded: nil, _links: nil, account_id: nil, catalog_id: nil, created_at: nil, created_by: nil, custom_fields_values: nil, invoice_link: nil, is_deleted: nil, name: nil, request_id: nil, updated_at: nil, updated_by: nil)
            #   @param id [Integer]
            #   @param _embedded [Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::Embedded]
            #   @param _links [Object]
            #   @param account_id [Integer]
            #   @param catalog_id [Integer]
            #   @param created_at [Integer]
            #   @param created_by [Integer]
            #   @param custom_fields_values [Array<Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::CustomFieldsValue>, nil]
            #   @param invoice_link [String, nil]
            #   @param is_deleted [Boolean]
            #   @param name [String]
            #   @param request_id [String]
            #   @param updated_at [Integer]
            #   @param updated_by [Integer]

            # @see Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute warning
              #
              #   @return [Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::Embedded::Warning, nil]
              optional :warning,
                       -> { Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::Embedded::Warning },
                       nil?: true

              # @!method initialize(warning: nil)
              #   @param warning [Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::Embedded::Warning, nil]

              # @see Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::Embedded#warning
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
              #   @return [Array<Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::CustomFieldsValue::Value>]
              required :values,
                       -> do
                         Amocrm::Internal::Type::ArrayOf[
                           Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::CustomFieldsValue::Value
                         ]
                       end

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
              #   @param values [Array<Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse::Embedded::Element::CustomFieldsValue::Value>]
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
      #   @return [Array(Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse, Amocrm::Models::APICatalogElementsUpdateResponse::Problem)]
    end
  end
end
