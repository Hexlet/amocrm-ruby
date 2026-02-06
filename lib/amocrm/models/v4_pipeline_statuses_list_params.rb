# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#pipeline_statuses_list
    class V4PipelineStatusesListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute with
      #   Expand related entities; comma-separated values (e.g. descriptions).
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(with: nil, request_options: {})
      #   @param with [String] Expand related entities; comma-separated values (e.g. descriptions).
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
