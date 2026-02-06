# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#pipeline_statuses_get_by_id
    class V4PipelineStatusesGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute pipeline_id
      #
      #   @return [Integer]
      required :pipeline_id, Integer

      # @!attribute with
      #   Expand related entities; comma-separated values (e.g. descriptions).
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(pipeline_id:, with: nil, request_options: {})
      #   @param pipeline_id [Integer]
      #
      #   @param with [String] Expand related entities; comma-separated values (e.g. descriptions).
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
