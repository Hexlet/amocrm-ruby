# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#entity_followers_remove
    class APIEntityFollowersRemoveParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::APIEntityFollowersRemoveParams::EntityType]
      required :entity_type, enum: -> { Amocrm::APIEntityFollowersRemoveParams::EntityType }

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APIEntityFollowersRemoveParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APIEntityFollowersRemoveParams::Body] }

      # @!method initialize(entity_type:, body:, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::APIEntityFollowersRemoveParams::EntityType]
      #   @param body [Array<Amocrm::Models::APIEntityFollowersRemoveParams::Body>]
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
        # @!attribute user_id
        #
        #   @return [Integer]
        required :user_id, Integer

        # @!method initialize(user_id:)
        #   @param user_id [Integer]
      end
    end
  end
end
