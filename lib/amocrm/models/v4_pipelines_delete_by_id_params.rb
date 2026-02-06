# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#pipelines_delete_by_id
    class V4PipelinesDeleteByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
