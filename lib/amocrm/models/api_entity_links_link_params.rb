# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#entity_links_link
    class APIEntityLinksLinkParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APIEntityLinksLinkParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APIEntityLinksLinkParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APIEntityLinksLinkParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      module EntityType
        extend Amocrm::Internal::Type::Enum

        LEADS = :leads
        CONTACTS = :contacts
        COMPANIES = :companies
        CUSTOMERS = :customers

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute entity_id
        #
        #   @return [Integer, nil]
        optional :entity_id, Integer

        # @!attribute entity_type
        #
        #   @return [Symbol, String, Amocrm::Models::APIEntityLinksLinkParams::Body::EntityType, nil]
        optional :entity_type, union: -> { Amocrm::APIEntityLinksLinkParams::Body::EntityType }

        # @!attribute metadata
        #
        #   @return [Object, nil]
        optional :metadata, Amocrm::Internal::Type::Unknown

        # @!attribute to_entity_id
        #
        #   @return [Integer, nil]
        optional :to_entity_id, Integer

        # @!attribute to_entity_type
        #
        #   @return [Symbol, String, Amocrm::Models::APIEntityLinksLinkParams::Body::ToEntityType, nil]
        optional :to_entity_type, union: -> { Amocrm::APIEntityLinksLinkParams::Body::ToEntityType }

        # @!method initialize(entity_id: nil, entity_type: nil, metadata: nil, to_entity_id: nil, to_entity_type: nil)
        #   @param entity_id [Integer]
        #   @param entity_type [Symbol, String, Amocrm::Models::APIEntityLinksLinkParams::Body::EntityType]
        #   @param metadata [Object]
        #   @param to_entity_id [Integer]
        #   @param to_entity_type [Symbol, String, Amocrm::Models::APIEntityLinksLinkParams::Body::ToEntityType]

        # @see Amocrm::Models::APIEntityLinksLinkParams::Body#entity_type
        module EntityType
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::APIEntityLinksLinkParams::Body::EntityType::LEADS }

          variant const: -> { Amocrm::Models::APIEntityLinksLinkParams::Body::EntityType::CONTACTS }

          variant const: -> { Amocrm::Models::APIEntityLinksLinkParams::Body::EntityType::COMPANIES }

          variant const: -> { Amocrm::Models::APIEntityLinksLinkParams::Body::EntityType::CUSTOMERS }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::APIEntityLinksLinkParams::Body::EntityType::TaggedSymbol, String) }
          end

          # @!group

          LEADS = :leads
          CONTACTS = :contacts
          COMPANIES = :companies
          CUSTOMERS = :customers

          # @!endgroup
        end

        # @see Amocrm::Models::APIEntityLinksLinkParams::Body#to_entity_type
        module ToEntityType
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::APIEntityLinksLinkParams::Body::ToEntityType::LEADS }

          variant const: -> { Amocrm::Models::APIEntityLinksLinkParams::Body::ToEntityType::CONTACTS }

          variant const: -> { Amocrm::Models::APIEntityLinksLinkParams::Body::ToEntityType::COMPANIES }

          variant const: -> { Amocrm::Models::APIEntityLinksLinkParams::Body::ToEntityType::CUSTOMERS }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::APIEntityLinksLinkParams::Body::ToEntityType::TaggedSymbol, String) }
          end

          # @!group

          LEADS = :leads
          CONTACTS = :contacts
          COMPANIES = :companies
          CUSTOMERS = :customers

          # @!endgroup
        end
      end
    end
  end
end
