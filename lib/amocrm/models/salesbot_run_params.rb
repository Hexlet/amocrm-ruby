# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Salesbot#run
    class SalesbotRunParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::SalesbotRunParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::SalesbotRunParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::SalesbotRunParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute bot_id
        #
        #   @return [Integer]
        required :bot_id, Integer

        # @!attribute entity_id
        #
        #   @return [Integer]
        required :entity_id, Integer

        # @!attribute entity_type
        #
        #   @return [Integer]
        required :entity_type, Integer

        # @!method initialize(bot_id:, entity_id:, entity_type:)
        #   @param bot_id [Integer]
        #   @param entity_id [Integer]
        #   @param entity_type [Integer]
      end
    end
  end
end
