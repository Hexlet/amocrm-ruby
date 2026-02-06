# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityLinks#link_by_entity
    class EntityLinkLinkByEntityParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityLinkLinkByEntityParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityLinkLinkByEntityParams::EntityType }

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::EntityLinkLinkByEntityParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::EntityLinkLinkByEntityParams::Body] }

      # @!method initialize(entity_type:, body:, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityLinkLinkByEntityParams::EntityType]
      #   @param body [Array<Amocrm::Models::EntityLinkLinkByEntityParams::Body>]
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
        #   @return [Symbol, String, Amocrm::Models::EntityLinkLinkByEntityParams::Body::EntityType, nil]
        optional :entity_type, union: -> { Amocrm::EntityLinkLinkByEntityParams::Body::EntityType }

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
        #   @return [Symbol, String, Amocrm::Models::EntityLinkLinkByEntityParams::Body::ToEntityType, nil]
        optional :to_entity_type, union: -> { Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType }

        # @!method initialize(entity_id: nil, entity_type: nil, metadata: nil, to_entity_id: nil, to_entity_type: nil)
        #   @param entity_id [Integer]
        #   @param entity_type [Symbol, String, Amocrm::Models::EntityLinkLinkByEntityParams::Body::EntityType]
        #   @param metadata [Object]
        #   @param to_entity_id [Integer]
        #   @param to_entity_type [Symbol, String, Amocrm::Models::EntityLinkLinkByEntityParams::Body::ToEntityType]

        # @see Amocrm::Models::EntityLinkLinkByEntityParams::Body#entity_type
        module EntityType
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::EntityLinkLinkByEntityParams::Body::EntityType::LEADS }

          variant const: -> { Amocrm::Models::EntityLinkLinkByEntityParams::Body::EntityType::CONTACTS }

          variant const: -> { Amocrm::Models::EntityLinkLinkByEntityParams::Body::EntityType::COMPANIES }

          variant const: -> { Amocrm::Models::EntityLinkLinkByEntityParams::Body::EntityType::CUSTOMERS }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::EntityLinkLinkByEntityParams::Body::EntityType::TaggedSymbol, String) }
          end

          # @!group

          LEADS = :leads
          CONTACTS = :contacts
          COMPANIES = :companies
          CUSTOMERS = :customers

          # @!endgroup
        end

        # @see Amocrm::Models::EntityLinkLinkByEntityParams::Body#to_entity_type
        module ToEntityType
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::EntityLinkLinkByEntityParams::Body::ToEntityType::LEADS }

          variant const: -> { Amocrm::Models::EntityLinkLinkByEntityParams::Body::ToEntityType::CONTACTS }

          variant const: -> { Amocrm::Models::EntityLinkLinkByEntityParams::Body::ToEntityType::COMPANIES }

          variant const: -> { Amocrm::Models::EntityLinkLinkByEntityParams::Body::ToEntityType::CUSTOMERS }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::EntityLinkLinkByEntityParams::Body::ToEntityType::TaggedSymbol, String) }
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
