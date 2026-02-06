# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Customers#update
    class CustomerUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::CustomerUpdateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::CustomerUpdateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::CustomerUpdateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::CustomerUpdateParams::Body::Embedded, nil]
        optional :_embedded, -> { Amocrm::CustomerUpdateParams::Body::Embedded }

        # @!attribute custom_fields_values
        #
        #   @return [Array<Amocrm::Models::CustomerUpdateParams::Body::CustomFieldsValue>, nil]
        optional :custom_fields_values,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::CustomerUpdateParams::Body::CustomFieldsValue] }

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

        # @!attribute responsible_user_id
        #
        #   @return [Integer, nil]
        optional :responsible_user_id, Integer

        # @!attribute status_id
        #
        #   @return [Integer, nil]
        optional :status_id, Integer

        # @!attribute tags_to_add
        #
        #   @return [Array<Amocrm::Models::CustomerUpdateParams::Body::TagsToAdd>, nil]
        optional :tags_to_add,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::CustomerUpdateParams::Body::TagsToAdd] }

        # @!attribute tags_to_delete
        #
        #   @return [Array<Amocrm::Models::CustomerUpdateParams::Body::TagsToDelete>, nil]
        optional :tags_to_delete,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::CustomerUpdateParams::Body::TagsToDelete] }

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!method initialize(id:, _embedded: nil, custom_fields_values: nil, main_user_id: nil, name: nil, next_date: nil, next_price: nil, periodicity: nil, responsible_user_id: nil, status_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil)
        #   @param id [Integer]
        #   @param _embedded [Amocrm::Models::CustomerUpdateParams::Body::Embedded]
        #   @param custom_fields_values [Array<Amocrm::Models::CustomerUpdateParams::Body::CustomFieldsValue>]
        #   @param main_user_id [Integer]
        #   @param name [String]
        #   @param next_date [Integer]
        #   @param next_price [Integer]
        #   @param periodicity [Integer]
        #   @param responsible_user_id [Integer]
        #   @param status_id [Integer]
        #   @param tags_to_add [Array<Amocrm::Models::CustomerUpdateParams::Body::TagsToAdd>]
        #   @param tags_to_delete [Array<Amocrm::Models::CustomerUpdateParams::Body::TagsToDelete>]
        #   @param updated_at [Integer]
        #   @param updated_by [Integer]

        # @see Amocrm::Models::CustomerUpdateParams::Body#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute segments
          #
          #   @return [Array<Amocrm::Models::CustomerUpdateParams::Body::Embedded::Segment>, nil]
          optional :segments,
                   -> {
                     Amocrm::Internal::Type::ArrayOf[Amocrm::CustomerUpdateParams::Body::Embedded::Segment]
                   },
                   nil?: true

          # @!attribute tags
          #
          #   @return [Array<Amocrm::Models::CustomerUpdateParams::Body::Embedded::Tag>, nil]
          optional :tags,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::CustomerUpdateParams::Body::Embedded::Tag] },
                   nil?: true

          # @!method initialize(segments: nil, tags: nil)
          #   @param segments [Array<Amocrm::Models::CustomerUpdateParams::Body::Embedded::Segment>, nil]
          #   @param tags [Array<Amocrm::Models::CustomerUpdateParams::Body::Embedded::Tag>, nil]

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
          #   @return [Array<Amocrm::Models::CustomerUpdateParams::Body::CustomFieldsValue::Value>]
          required :values,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value] }

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
          #   @param values [Array<Amocrm::Models::CustomerUpdateParams::Body::CustomFieldsValue::Value>] Values for the field (multiple values allowed)
          #
          #   @param field_code [String] Field code (e.g. PHONE/EMAIL)
          #
          #   @param field_id [Integer] Use either field_id or field_code (e.g. PHONE/EMAIL)

          class Value < Amocrm::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [String, Integer, Boolean]
            required :value, union: -> { Amocrm::CustomerUpdateParams::Body::CustomFieldsValue::Value::Value }

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

            # @see Amocrm::Models::CustomerUpdateParams::Body::CustomFieldsValue::Value#value
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

        class TagsToDelete < Amocrm::Internal::Type::BaseModel
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
