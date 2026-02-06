# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#widgets_install
    class V4WidgetsInstallParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Object]
      required :body, Amocrm::Internal::Type::Unknown

      # @!method initialize(body:, request_options: {})
      #   @param body [Object]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
