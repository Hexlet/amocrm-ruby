# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::EntityFollowers#add
    class EntityFollowerAddParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute entity_type
      #
      #   @return [Symbol, Amocrm::Models::EntityFollowerAddParams::EntityType]
      required :entity_type, enum: -> { Amocrm::EntityFollowerAddParams::EntityType }

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::EntityFollowerAddParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::EntityFollowerAddParams::Body] }

      # @!method initialize(entity_type:, body:, request_options: {})
      #   @param entity_type [Symbol, Amocrm::Models::EntityFollowerAddParams::EntityType]
      #   @param body [Array<Amocrm::Models::EntityFollowerAddParams::Body>]
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
