# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Sources#delete
    class SourceDeleteParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::SourceDeleteParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::SourceDeleteParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::SourceDeleteParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!method initialize(id:)
        #   @param id [Integer]
      end
    end
  end
end
