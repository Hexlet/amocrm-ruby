# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#catalog_elements_update
    class V4CatalogElementsUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::V4CatalogElementsUpdateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4CatalogElementsUpdateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::V4CatalogElementsUpdateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute custom_fields_values
        #
        #   @return [Array<Amocrm::Models::V4CatalogElementsUpdateParams::Body::CustomFieldsValue>, nil]
        optional :custom_fields_values,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue] }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(id:, custom_fields_values: nil, name: nil, request_id: nil)
        #   @param id [Integer]
        #   @param custom_fields_values [Array<Amocrm::Models::V4CatalogElementsUpdateParams::Body::CustomFieldsValue>]
        #   @param name [String]
        #   @param request_id [String]

        class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
          # @!attribute values
          #
          #   @return [Array<Amocrm::Models::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::Value>]
          required :values,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::Value] }

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
          #   @param values [Array<Amocrm::Models::V4CatalogElementsUpdateParams::Body::CustomFieldsValue::Value>]
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
end
