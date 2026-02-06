# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#companies_create
    class APICompaniesCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APICompaniesCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICompaniesCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APICompaniesCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #   Embedded entities
        #
        #   @return [Amocrm::Models::APICompaniesCreateParams::Body::Embedded, nil]
        optional :_embedded, -> { Amocrm::APICompaniesCreateParams::Body::Embedded }

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute custom_fields_values
        #   Custom fields payload
        #
        #   @return [Array<Amocrm::Models::APICompaniesCreateParams::Body::CustomFieldsValue>, nil]
        optional :custom_fields_values,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICompaniesCreateParams::Body::CustomFieldsValue] }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute request_id
        #   Client-side request id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute responsible_user_id
        #
        #   @return [Integer, nil]
        optional :responsible_user_id, Integer

        # @!attribute tags_to_add
        #   Tags to attach
        #
        #   @return [Array<Amocrm::Models::APICompaniesCreateParams::Body::TagsToAdd>, nil]
        optional :tags_to_add,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICompaniesCreateParams::Body::TagsToAdd] }

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!method initialize(_embedded: nil, created_at: nil, created_by: nil, custom_fields_values: nil, name: nil, request_id: nil, responsible_user_id: nil, tags_to_add: nil, updated_at: nil, updated_by: nil)
        #   @param _embedded [Amocrm::Models::APICompaniesCreateParams::Body::Embedded] Embedded entities
        #
        #   @param created_at [Integer]
        #
        #   @param created_by [Integer]
        #
        #   @param custom_fields_values [Array<Amocrm::Models::APICompaniesCreateParams::Body::CustomFieldsValue>] Custom fields payload
        #
        #   @param name [String]
        #
        #   @param request_id [String] Client-side request id
        #
        #   @param responsible_user_id [Integer]
        #
        #   @param tags_to_add [Array<Amocrm::Models::APICompaniesCreateParams::Body::TagsToAdd>] Tags to attach
        #
        #   @param updated_at [Integer]
        #
        #   @param updated_by [Integer]

        # @see Amocrm::Models::APICompaniesCreateParams::Body#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute tags
          #
          #   @return [Array<Amocrm::Models::APICompaniesCreateParams::Body::Embedded::Tag>, nil]
          optional :tags,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICompaniesCreateParams::Body::Embedded::Tag] }

          # @!method initialize(tags: nil)
          #   Embedded entities
          #
          #   @param tags [Array<Amocrm::Models::APICompaniesCreateParams::Body::Embedded::Tag>]

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
          #   @return [Array<Amocrm::Models::APICompaniesCreateParams::Body::CustomFieldsValue::Value>]
          required :values,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICompaniesCreateParams::Body::CustomFieldsValue::Value] }

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
          #   @param values [Array<Amocrm::Models::APICompaniesCreateParams::Body::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
          #
          #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
          #
          #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

          class Value < Amocrm::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [String, Integer, Boolean]
            required :value, union: -> { Amocrm::APICompaniesCreateParams::Body::CustomFieldsValue::Value::Value }

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

            # @see Amocrm::Models::APICompaniesCreateParams::Body::CustomFieldsValue::Value#value
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

        class TagsToAdd < Amocrm::Internal::Type::BaseModel
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
    end
  end
end
