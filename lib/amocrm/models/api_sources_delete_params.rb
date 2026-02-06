# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#sources_delete
    class APISourcesDeleteParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APISourcesDeleteParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APISourcesDeleteParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APISourcesDeleteParams::Body>]
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
