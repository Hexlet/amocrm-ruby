# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#pipeline_statuses_delete_by_id
    class V4PipelineStatusesDeleteByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute pipeline_id
      #
      #   @return [Integer]
      required :pipeline_id, Integer

      # @!method initialize(pipeline_id:, request_options: {})
      #   @param pipeline_id [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
