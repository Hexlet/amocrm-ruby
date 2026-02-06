# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#entity_followers_add
    class V4EntityFollowersAddParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::V4EntityFollowersAddParams::EntityType]
      required :entity_type, enum: -> { Amocrm::V4EntityFollowersAddParams::EntityType }

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::V4EntityFollowersAddParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4EntityFollowersAddParams::Body] }

      # @!method initialize(entity_type:, body:, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::V4EntityFollowersAddParams::EntityType]
      #   @param body [Array<Amocrm::Models::V4EntityFollowersAddParams::Body>]
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
