# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customers_list
    module APICustomersListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICustomersListResponse::CustomerListResponse }

      variant -> { Amocrm::Models::APICustomersListResponse::Problem }

      class CustomerListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::APICustomersListResponse::CustomerListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute customers
          #
          #   @return [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer>, nil]
          optional :customers,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer] }

          # @!method initialize(customers: nil)
          #   @param customers [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer>]

          class Customer < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded, nil]
            optional :_embedded,
                     -> { Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded }

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute account_id
            #
            #   @return [Integer, nil]
            optional :account_id, Integer

            # @!attribute average_check
            #
            #   @return [Integer, nil]
            optional :average_check, Integer

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
            #   @return [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::CustomFieldsValue>, nil]
            optional :custom_fields_values,
                     -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::CustomFieldsValue] },
                     nil?: true

            # @!attribute group_id
            #
            #   @return [Integer, nil]
            optional :group_id, Integer

            # @!attribute is_deleted
            #
            #   @return [Boolean, nil]
            optional :is_deleted, Amocrm::Internal::Type::Boolean

            # @!attribute ltv
            #
            #   @return [Integer, nil]
            optional :ltv, Integer

            # @!attribute main_user_id
            #
            #   @return [Integer, nil]
            optional :main_user_id, Integer

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute next_date
            #
            #   @return [Integer, nil]
            optional :next_date, Integer

            # @!attribute next_price
            #
            #   @return [Integer, nil]
            optional :next_price, Integer

            # @!attribute periodicity
            #
            #   @return [Integer, nil]
            optional :periodicity, Integer

            # @!attribute purchases_count
            #
            #   @return [Integer, nil]
            optional :purchases_count, Integer

            # @!attribute responsible_user_id
            #
            #   @return [Integer, nil]
            optional :responsible_user_id, Integer

            # @!attribute status_id
            #
            #   @return [Integer, nil]
            optional :status_id, Integer

            # @!attribute updated_at
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!attribute updated_by
            #
            #   @return [Integer, nil]
            optional :updated_by, Integer

            # @!method initialize(id: nil, _embedded: nil, _links: nil, account_id: nil, average_check: nil, closest_task_at: nil, created_at: nil, created_by: nil, custom_fields_values: nil, group_id: nil, is_deleted: nil, ltv: nil, main_user_id: nil, name: nil, next_date: nil, next_price: nil, periodicity: nil, purchases_count: nil, responsible_user_id: nil, status_id: nil, updated_at: nil, updated_by: nil)
            #   @param id [Integer]
            #   @param _embedded [Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded]
            #   @param _links [Object]
            #   @param account_id [Integer]
            #   @param average_check [Integer]
            #   @param closest_task_at [Integer]
            #   @param created_at [Integer]
            #   @param created_by [Integer]
            #   @param custom_fields_values [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::CustomFieldsValue>, nil]
            #   @param group_id [Integer]
            #   @param is_deleted [Boolean]
            #   @param ltv [Integer]
            #   @param main_user_id [Integer]
            #   @param name [String]
            #   @param next_date [Integer]
            #   @param next_price [Integer]
            #   @param periodicity [Integer]
            #   @param purchases_count [Integer]
            #   @param responsible_user_id [Integer]
            #   @param status_id [Integer]
            #   @param updated_at [Integer]
            #   @param updated_by [Integer]

            # @see Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute catalog_elements
              #
              #   @return [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::CatalogElement>, nil]
              optional :catalog_elements,
                       -> do
                         Amocrm::Internal::Type::ArrayOf[
                           Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::CatalogElement
                         ]
                       end

              # @!attribute companies
              #
              #   @return [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Company>, nil]
              optional :companies,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Company] }

              # @!attribute contacts
              #
              #   @return [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Contact>, nil]
              optional :contacts,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Contact] }

              # @!attribute segments
              #
              #   @return [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Segment>, nil]
              optional :segments,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Segment] }

              # @!attribute tags
              #
              #   @return [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Tag>, nil]
              optional :tags,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Tag] }

              # @!method initialize(catalog_elements: nil, companies: nil, contacts: nil, segments: nil, tags: nil)
              #   @param catalog_elements [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::CatalogElement>]
              #   @param companies [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Company>]
              #   @param contacts [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Contact>]
              #   @param segments [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Segment>]
              #   @param tags [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::Embedded::Tag>]

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

              class Segment < Amocrm::Internal::Type::BaseModel
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
              #   @return [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::CustomFieldsValue::Value>]
              required :values,
                       -> do
                         Amocrm::Internal::Type::ArrayOf[
                           Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::CustomFieldsValue::Value
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
              #   @param values [Array<Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
              #
              #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
              #
              #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

              class Value < Amocrm::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [String, Integer, Boolean]
                required :value,
                         union: -> { Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::CustomFieldsValue::Value::Value }

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

                # @see Amocrm::Models::APICustomersListResponse::CustomerListResponse::Embedded::Customer::CustomFieldsValue::Value#value
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
      #   @return [Array(Amocrm::Models::APICustomersListResponse::CustomerListResponse, Amocrm::Models::APICustomersListResponse::Problem)]
    end
  end
end
