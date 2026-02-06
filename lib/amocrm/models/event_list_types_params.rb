# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Events#list_types
    class EventListTypesParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute language_code
      #
      #   @return [String, nil]
      optional :language_code, String

      # @!method initialize(language_code: nil, request_options: {})
      #   @param language_code [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
