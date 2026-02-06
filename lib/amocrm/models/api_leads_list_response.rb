# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#leads_list
    module APILeadsListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APILeadsListResponse::LeadListResponse }

      variant -> { Amocrm::Models::APILeadsListResponse::Problem }

      class LeadListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::APILeadsListResponse::LeadListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute leads
          #
          #   @return [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead>, nil]
          optional :leads,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead] }

          # @!method initialize(leads: nil)
          #   @param leads [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead>]

          class Lead < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded, nil]
            optional :_embedded,
                     -> { Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded }

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute account_id
            #
            #   @return [Integer, nil]
            optional :account_id, Integer

            # @!attribute closed_at
            #
            #   @return [Integer, nil]
            optional :closed_at, Integer

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
            #   @return [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue>, nil]
            optional :custom_fields_values,
                     -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue] },
                     nil?: true

            # @!attribute group_id
            #
            #   @return [Integer, nil]
            optional :group_id, Integer

            # @!attribute is_deleted
            #
            #   @return [Boolean, nil]
            optional :is_deleted, Amocrm::Internal::Type::Boolean

            # @!attribute is_price_modified_by_robot
            #
            #   @return [Boolean, nil]
            optional :is_price_modified_by_robot, Amocrm::Internal::Type::Boolean

            # @!attribute labor_cost
            #
            #   @return [Integer, nil]
            optional :labor_cost, Integer

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

            # @!attribute responsible_user_id
            #
            #   @return [Integer, nil]
            optional :responsible_user_id, Integer

            # @!attribute score
            #
            #   @return [Integer, nil]
            optional :score, Integer, nil?: true

            # @!attribute source_id
            #
            #   @return [Integer, nil]
            optional :source_id, Integer

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

            # @!attribute visitor_uid
            #
            #   @return [String, nil]
            optional :visitor_uid, String

            # @!method initialize(id: nil, _embedded: nil, _links: nil, account_id: nil, closed_at: nil, closest_task_at: nil, created_at: nil, created_by: nil, custom_fields_values: nil, group_id: nil, is_deleted: nil, is_price_modified_by_robot: nil, labor_cost: nil, loss_reason_id: nil, name: nil, pipeline_id: nil, price: nil, responsible_user_id: nil, score: nil, source_id: nil, status_id: nil, updated_at: nil, updated_by: nil, visitor_uid: nil)
            #   @param id [Integer]
            #   @param _embedded [Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded]
            #   @param _links [Object]
            #   @param account_id [Integer]
            #   @param closed_at [Integer]
            #   @param closest_task_at [Integer]
            #   @param created_at [Integer]
            #   @param created_by [Integer]
            #   @param custom_fields_values [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue>, nil]
            #   @param group_id [Integer]
            #   @param is_deleted [Boolean]
            #   @param is_price_modified_by_robot [Boolean]
            #   @param labor_cost [Integer]
            #   @param loss_reason_id [Integer]
            #   @param name [String]
            #   @param pipeline_id [Integer]
            #   @param price [Integer]
            #   @param responsible_user_id [Integer]
            #   @param score [Integer, nil]
            #   @param source_id [Integer]
            #   @param status_id [Integer]
            #   @param updated_at [Integer]
            #   @param updated_by [Integer]
            #   @param visitor_uid [String]

            # @see Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute catalog_elements
              #
              #   @return [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::CatalogElement>, nil]
              optional :catalog_elements,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::CatalogElement] }

              # @!attribute companies
              #
              #   @return [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Company>, nil]
              optional :companies,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Company] }

              # @!attribute contacts
              #
              #   @return [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Contact>, nil]
              optional :contacts,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Contact] }

              # @!attribute loss_reason
              #
              #   @return [Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::LossReason, nil]
              optional :loss_reason,
                       -> { Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::LossReason }

              # @!attribute source
              #
              #   @return [Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source, nil]
              optional :source,
                       -> { Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source }

              # @!attribute tags
              #
              #   @return [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Tag>, nil]
              optional :tags,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Tag] }

              # @!method initialize(catalog_elements: nil, companies: nil, contacts: nil, loss_reason: nil, source: nil, tags: nil)
              #   @param catalog_elements [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::CatalogElement>]
              #   @param companies [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Company>]
              #   @param contacts [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Contact>]
              #   @param loss_reason [Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::LossReason]
              #   @param source [Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source]
              #   @param tags [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Tag>]

              class CatalogElement < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute metadata
                #
                #   @return [Object, nil]
                optional :metadata, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, metadata: nil)
                #   @param id [Integer]
                #   @param metadata [Object]
              end

              class Company < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!method initialize(id: nil)
                #   @param id [Integer]
              end

              class Contact < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute is_main
                #
                #   @return [Boolean, nil]
                optional :is_main, Amocrm::Internal::Type::Boolean

                # @!method initialize(id: nil, is_main: nil)
                #   @param id [Integer]
                #   @param is_main [Boolean]
              end

              # @see Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded#loss_reason
              class LossReason < Amocrm::Internal::Type::BaseModel
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

              # @see Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded#source
              class Source < Amocrm::Internal::Type::BaseModel
                # @!attribute external_id
                #   External id in your system
                #
                #   @return [String, Integer, Boolean, nil]
                optional :external_id,
                         union: -> { Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source::ExternalID }

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
                # @see Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::Embedded::Source#external_id
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
              #   @return [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value>]
              required :values,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value] }

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
              #   @param values [Array<Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
              #
              #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
              #
              #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

              class Value < Amocrm::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [String, Integer, Boolean]
                required :value,
                         union: -> { Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value::Value }

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

                # @see Amocrm::Models::APILeadsListResponse::LeadListResponse::Embedded::Lead::CustomFieldsValue::Value#value
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
      #   @return [Array(Amocrm::Models::APILeadsListResponse::LeadListResponse, Amocrm::Models::APILeadsListResponse::Problem)]
    end
  end
end
