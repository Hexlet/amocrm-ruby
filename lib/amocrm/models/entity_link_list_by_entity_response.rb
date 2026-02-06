# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityLinks#list_by_entity
    module EntityLinkListByEntityResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse }

      variant -> { Amocrm::Models::EntityLinkListByEntityResponse::Problem }

      class EntityLinksResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute links
          #
          #   @return [Array<Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link>, nil]
          optional :links,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link] }

          # @!method initialize(links: nil)
          #   @param links [Array<Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link>]

          class Link < Amocrm::Internal::Type::BaseModel
            # @!attribute entity_id
            #
            #   @return [Integer, nil]
            optional :entity_id, Integer

            # @!attribute entity_type
            #
            #   @return [Symbol, String, Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType, nil]
            optional :entity_type,
                     union: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType }

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
            #   @return [Symbol, String, Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType, nil]
            optional :to_entity_type,
                     union: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType }

            # @!method initialize(entity_id: nil, entity_type: nil, metadata: nil, to_entity_id: nil, to_entity_type: nil)
            #   @param entity_id [Integer]
            #   @param entity_type [Symbol, String, Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType]
            #   @param metadata [Object]
            #   @param to_entity_id [Integer]
            #   @param to_entity_type [Symbol, String, Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType]

            # @see Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link#entity_type
            module EntityType
              extend Amocrm::Internal::Type::Union

              variant const: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::LEADS }

              variant const: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::CONTACTS }

              variant const: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::COMPANIES }

              variant const: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::CUSTOMERS }

              variant String

              # @!method self.variants
              #   @return [Array(Symbol, String)]

              define_sorbet_constant!(:Variants) do
                T.type_alias do
                  T.any(
                    Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::EntityType::TaggedSymbol,
                    String
                  )
                end
              end

              # @!group

              LEADS = :leads
              CONTACTS = :contacts
              COMPANIES = :companies
              CUSTOMERS = :customers

              # @!endgroup
            end

            # @see Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link#to_entity_type
            module ToEntityType
              extend Amocrm::Internal::Type::Union

              variant const: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::LEADS }

              variant const: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::CONTACTS }

              variant const: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::COMPANIES }

              variant const: -> { Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::CUSTOMERS }

              variant String

              # @!method self.variants
              #   @return [Array(Symbol, String)]

              define_sorbet_constant!(:Variants) do
                T.type_alias do
                  T.any(
                    Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse::Embedded::Link::ToEntityType::TaggedSymbol,
                    String
                  )
                end
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
      #   @return [Array(Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse, Amocrm::Models::EntityLinkListByEntityResponse::Problem)]
    end
  end
end
