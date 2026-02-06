# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#custom_fields_create
    module V4CustomFieldsCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse }

      variant -> { Amocrm::Models::V4CustomFieldsCreateResponse::Problem }

      class CustomFieldCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute custom_fields
          #
          #   @return [Array<Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse::Embedded::CustomField>, nil]
          optional :custom_fields,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse::Embedded::CustomField] }

          # @!method initialize(custom_fields: nil)
          #   @param custom_fields [Array<Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse::Embedded::CustomField>]

          class CustomField < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!method initialize(id: nil, name: nil, request_id: nil)
            #   @param id [Integer]
            #   @param name [String]
            #   @param request_id [String]
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
      #   @return [Array(Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse, Amocrm::Models::V4CustomFieldsCreateResponse::Problem)]
    end
  end
end
