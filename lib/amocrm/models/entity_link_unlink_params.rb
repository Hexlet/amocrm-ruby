# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityLinks#unlink
    class EntityLinkUnlinkParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::EntityLinkUnlinkParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::EntityLinkUnlinkParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::EntityLinkUnlinkParams::Body>]
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
        #   @return [Symbol, String, Amocrm::Models::EntityLinkUnlinkParams::Body::EntityType, nil]
        optional :entity_type, union: -> { Amocrm::EntityLinkUnlinkParams::Body::EntityType }

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
        #   @return [Symbol, String, Amocrm::Models::EntityLinkUnlinkParams::Body::ToEntityType, nil]
        optional :to_entity_type, union: -> { Amocrm::EntityLinkUnlinkParams::Body::ToEntityType }

        # @!method initialize(entity_id: nil, entity_type: nil, metadata: nil, to_entity_id: nil, to_entity_type: nil)
        #   @param entity_id [Integer]
        #   @param entity_type [Symbol, String, Amocrm::Models::EntityLinkUnlinkParams::Body::EntityType]
        #   @param metadata [Object]
        #   @param to_entity_id [Integer]
        #   @param to_entity_type [Symbol, String, Amocrm::Models::EntityLinkUnlinkParams::Body::ToEntityType]

        # @see Amocrm::Models::EntityLinkUnlinkParams::Body#entity_type
        module EntityType
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::EntityLinkUnlinkParams::Body::EntityType::LEADS }

          variant const: -> { Amocrm::Models::EntityLinkUnlinkParams::Body::EntityType::CONTACTS }

          variant const: -> { Amocrm::Models::EntityLinkUnlinkParams::Body::EntityType::COMPANIES }

          variant const: -> { Amocrm::Models::EntityLinkUnlinkParams::Body::EntityType::CUSTOMERS }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::EntityLinkUnlinkParams::Body::EntityType::TaggedSymbol, String) }
          end

          # @!group

          LEADS = :leads
          CONTACTS = :contacts
          COMPANIES = :companies
          CUSTOMERS = :customers

          # @!endgroup
        end

        # @see Amocrm::Models::EntityLinkUnlinkParams::Body#to_entity_type
        module ToEntityType
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::EntityLinkUnlinkParams::Body::ToEntityType::LEADS }

          variant const: -> { Amocrm::Models::EntityLinkUnlinkParams::Body::ToEntityType::CONTACTS }

          variant const: -> { Amocrm::Models::EntityLinkUnlinkParams::Body::ToEntityType::COMPANIES }

          variant const: -> { Amocrm::Models::EntityLinkUnlinkParams::Body::ToEntityType::CUSTOMERS }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::EntityLinkUnlinkParams::Body::ToEntityType::TaggedSymbol, String) }
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
