# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#entity_followers_list
    class APIEntityFollowersListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::APIEntityFollowersListParams::EntityType]
      required :entity_type, enum: -> { Amocrm::APIEntityFollowersListParams::EntityType }

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!method initialize(entity_type:, limit: nil, page: nil, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::APIEntityFollowersListParams::EntityType]
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
