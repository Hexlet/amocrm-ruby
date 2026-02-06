# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::PipelineStatuses#list
    class PipelineStatusListParams < Amocrm::Internal::Type::BaseModel
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
