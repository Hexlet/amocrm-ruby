# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_segments_create
    class APICustomerSegmentsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APICustomerSegmentsCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICustomerSegmentsCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APICustomerSegmentsCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute custom_fields_values
        #
        #   @return [Array<Amocrm::Models::APICustomerSegmentsCreateParams::Body::CustomFieldsValue>, nil]
        optional :custom_fields_values,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICustomerSegmentsCreateParams::Body::CustomFieldsValue] }

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(name:, color: nil, custom_fields_values: nil, request_id: nil)
        #   @param name [String]
        #   @param color [String]
        #   @param custom_fields_values [Array<Amocrm::Models::APICustomerSegmentsCreateParams::Body::CustomFieldsValue>]
        #   @param request_id [String]

        class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
          # @!attribute values
          #   Values for the field (multiple values allowed)
          #
          #   @return [Array<Amocrm::Models::APICustomerSegmentsCreateParams::Body::CustomFieldsValue::Value>]
          required :values,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICustomerSegmentsCreateParams::Body::CustomFieldsValue::Value] }

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
          #   @param values [Array<Amocrm::Models::APICustomerSegmentsCreateParams::Body::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
          #
          #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
          #
          #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

          class Value < Amocrm::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [String, Integer, Boolean]
            required :value,
                     union: -> { Amocrm::APICustomerSegmentsCreateParams::Body::CustomFieldsValue::Value::Value }

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

            # @see Amocrm::Models::APICustomerSegmentsCreateParams::Body::CustomFieldsValue::Value#value
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
end
