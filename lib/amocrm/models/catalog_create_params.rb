# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Catalogs#create
    class CatalogCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::CatalogCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::CatalogCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::CatalogCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute can_add_elements
        #
        #   @return [Boolean, nil]
        optional :can_add_elements, Amocrm::Internal::Type::Boolean

        # @!attribute can_link_multiple
        #
        #   @return [Boolean, nil]
        optional :can_link_multiple, Amocrm::Internal::Type::Boolean

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!attribute type
        #
        #   @return [Symbol, String, Amocrm::Models::CatalogCreateParams::Body::Type, nil]
        optional :type, union: -> { Amocrm::CatalogCreateParams::Body::Type }

        # @!method initialize(name:, can_add_elements: nil, can_link_multiple: nil, request_id: nil, sort: nil, type: nil)
        #   @param name [String]
        #   @param can_add_elements [Boolean]
        #   @param can_link_multiple [Boolean]
        #   @param request_id [String]
        #   @param sort [Integer]
        #   @param type [Symbol, String, Amocrm::Models::CatalogCreateParams::Body::Type]

        # @see Amocrm::Models::CatalogCreateParams::Body#type
        module Type
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::CatalogCreateParams::Body::Type::REGULAR }

          variant const: -> { Amocrm::Models::CatalogCreateParams::Body::Type::INVOICES }

          variant const: -> { Amocrm::Models::CatalogCreateParams::Body::Type::PRODUCTS }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::CatalogCreateParams::Body::Type::TaggedSymbol, String) }
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
end
