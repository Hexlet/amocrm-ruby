# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#companies_get_by_id
    class V4CompaniesGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute with
      #   Expand related entities; comma-separated values
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(with: nil, request_options: {})
      #   @param with [String] Expand related entities; comma-separated values
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
