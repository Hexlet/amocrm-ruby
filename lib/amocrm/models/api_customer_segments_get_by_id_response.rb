# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_segments_get_by_id
    module APICustomerSegmentsGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment }

      variant -> { Amocrm::Models::APICustomerSegmentsGetByIDResponse::Problem }

      class CustomerSegment < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute custom_fields_values
        #
        #   @return [Array<Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue>, nil]
        optional :custom_fields_values,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue] },
                 nil?: true

        # @!attribute customers_count
        #
        #   @return [Integer, nil]
        optional :customers_count, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!method initialize(id: nil, color: nil, created_at: nil, custom_fields_values: nil, customers_count: nil, name: nil, updated_at: nil)
        #   @param id [Integer]
        #   @param color [String]
        #   @param created_at [Integer]
        #   @param custom_fields_values [Array<Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue>, nil]
        #   @param customers_count [Integer]
        #   @param name [String]
        #   @param updated_at [Integer]

        class CustomFieldsValue < Amocrm::Internal::Type::BaseModel
          # @!attribute values
          #   Values for the field (multiple values allowed)
          #
          #   @return [Array<Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value>]
          required :values,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value] }

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
          #   @param values [Array<Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
          #
          #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
          #
          #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

          class Value < Amocrm::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [String, Integer, Boolean]
            required :value,
                     union: -> { Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value::Value }

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

            # @see Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment::CustomFieldsValue::Value#value
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
      #   @return [Array(Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment, Amocrm::Models::APICustomerSegmentsGetByIDResponse::Problem)]
    end
  end
end
