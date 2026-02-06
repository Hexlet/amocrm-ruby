# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#catalogs_create
    module V4CatalogsCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse }

      variant -> { Amocrm::Models::V4CatalogsCreateResponse::Problem }

      class CatalogCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute catalogs
          #
          #   @return [Array<Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog>, nil]
          optional :catalogs,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog] }

          # @!method initialize(catalogs: nil)
          #   @param catalogs [Array<Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog>]

          class Catalog < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute account_id
            #
            #   @return [Integer, nil]
            optional :account_id, Integer

            # @!attribute can_add_elements
            #
            #   @return [Boolean, nil]
            optional :can_add_elements, Amocrm::Internal::Type::Boolean

            # @!attribute can_be_deleted
            #
            #   @return [Boolean, nil]
            optional :can_be_deleted, Amocrm::Internal::Type::Boolean

            # @!attribute can_link_multiple
            #
            #   @return [Boolean, nil]
            optional :can_link_multiple, Amocrm::Internal::Type::Boolean

            # @!attribute can_show_in_cards
            #
            #   @return [Boolean, nil]
            optional :can_show_in_cards, Amocrm::Internal::Type::Boolean

            # @!attribute created_at
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute created_by
            #
            #   @return [Integer, nil]
            optional :created_by, Integer

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!attribute sdk_widget_code
            #
            #   @return [String, Integer, nil]
            optional :sdk_widget_code,
                     union: -> { Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::SDKWidgetCode },
                     nil?: true

            # @!attribute sort
            #
            #   @return [Integer, nil]
            optional :sort, Integer

            # @!attribute type
            #
            #   @return [Symbol, String, Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type, nil]
            optional :type,
                     union: -> { Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type }

            # @!attribute updated_at
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!attribute updated_by
            #
            #   @return [Integer, nil]
            optional :updated_by, Integer

            # @!method initialize(id: nil, _links: nil, account_id: nil, can_add_elements: nil, can_be_deleted: nil, can_link_multiple: nil, can_show_in_cards: nil, created_at: nil, created_by: nil, name: nil, request_id: nil, sdk_widget_code: nil, sort: nil, type: nil, updated_at: nil, updated_by: nil)
            #   @param id [Integer]
            #   @param _links [Object]
            #   @param account_id [Integer]
            #   @param can_add_elements [Boolean]
            #   @param can_be_deleted [Boolean]
            #   @param can_link_multiple [Boolean]
            #   @param can_show_in_cards [Boolean]
            #   @param created_at [Integer]
            #   @param created_by [Integer]
            #   @param name [String]
            #   @param request_id [String]
            #   @param sdk_widget_code [String, Integer, nil]
            #   @param sort [Integer]
            #   @param type [Symbol, String, Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type]
            #   @param updated_at [Integer]
            #   @param updated_by [Integer]

            # @see Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog#sdk_widget_code
            module SDKWidgetCode
              extend Amocrm::Internal::Type::Union

              variant String

              variant Integer

              # @!method self.variants
              #   @return [Array(String, Integer)]
            end

            # @see Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog#type
            module Type
              extend Amocrm::Internal::Type::Union

              variant const: -> { Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::REGULAR }

              variant const: -> { Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::INVOICES }

              variant const: -> { Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::PRODUCTS }

              variant String

              # @!method self.variants
              #   @return [Array(Symbol, String)]

              define_sorbet_constant!(:Variants) do
                T.type_alias do
                  T.any(
                    Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse::Embedded::Catalog::Type::TaggedSymbol,
                    String
                  )
                end
              end

              # @!group

              REGULAR = :regular
              INVOICES = :invoices
              PRODUCTS = :products

              # @!endgroup
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
      #   @return [Array(Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse, Amocrm::Models::V4CatalogsCreateResponse::Problem)]
    end
  end
end
