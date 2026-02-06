# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityFollowers#list
    class EntityFollowerListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityFollowerListParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityFollowerListParams::EntityType }

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!method initialize(entity_type:, limit: nil, page: nil, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityFollowerListParams::EntityType]
      #   @param limit [Integer]
      #   @param page [Integer]
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
    end
  end
end
