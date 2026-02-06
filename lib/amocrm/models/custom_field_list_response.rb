# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CustomFields#list
    module CustomFieldListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse }

      variant -> { Amocrm::Models::CustomFieldListResponse::Problem }

      class CustomFieldListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute custom_fields
          #
          #   @return [Array<Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse::Embedded::CustomField>, nil]
          optional :custom_fields,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse::Embedded::CustomField] }

          # @!method initialize(custom_fields: nil)
          #   @param custom_fields [Array<Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse::Embedded::CustomField>]

          class CustomField < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute code
            #
            #   @return [String, nil]
            optional :code, String

            # @!attribute entity_type
            #
            #   @return [String, nil]
            optional :entity_type, String

            # @!attribute enums
            #
            #   @return [Array<Object>, nil]
            optional :enums, Amocrm::Internal::Type::ArrayOf[Amocrm::Internal::Type::Unknown]

            # @!attribute group_id
            #
            #   @return [Integer, nil]
            optional :group_id, Integer

            # @!attribute is_deletable
            #
            #   @return [Boolean, nil]
            optional :is_deletable, Amocrm::Internal::Type::Boolean

            # @!attribute is_multiple
            #
            #   @return [Boolean, nil]
            optional :is_multiple, Amocrm::Internal::Type::Boolean

            # @!attribute is_required
            #
            #   @return [Boolean, nil]
            optional :is_required, Amocrm::Internal::Type::Boolean

            # @!attribute is_visible
            #
            #   @return [Boolean, nil]
            optional :is_visible, Amocrm::Internal::Type::Boolean

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute settings
            #
            #   @return [Object, nil]
            optional :settings, Amocrm::Internal::Type::Unknown

            # @!attribute sort
            #
            #   @return [Integer, nil]
            optional :sort, Integer

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(id: nil, code: nil, entity_type: nil, enums: nil, group_id: nil, is_deletable: nil, is_multiple: nil, is_required: nil, is_visible: nil, name: nil, settings: nil, sort: nil, type: nil)
            #   @param id [Integer]
            #   @param code [String]
            #   @param entity_type [String]
            #   @param enums [Array<Object>]
            #   @param group_id [Integer]
            #   @param is_deletable [Boolean]
            #   @param is_multiple [Boolean]
            #   @param is_required [Boolean]
            #   @param is_visible [Boolean]
            #   @param name [String]
            #   @param settings [Object]
            #   @param sort [Integer]
            #   @param type [String]
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
      #   @return [Array(Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse, Amocrm::Models::CustomFieldListResponse::Problem)]
    end
  end
end
