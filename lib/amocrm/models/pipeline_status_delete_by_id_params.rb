# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::PipelineStatuses#delete_by_id
    class PipelineStatusDeleteByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute pipeline_id
      #
      #   @return [Integer]
      required :pipeline_id, Integer

      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!method initialize(pipeline_id:, id:, request_options: {})
      #   @param pipeline_id [Integer]
      #   @param id [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
