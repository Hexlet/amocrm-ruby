# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#customer_statuses_get_by_id
    class V4CustomerStatusesGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
