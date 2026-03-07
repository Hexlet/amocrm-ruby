# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Widgets#install
    class WidgetInstallParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute widget_code
      #
      #   @return [String]
      required :widget_code, String

      # @!attribute body
      #
      #   @return [Object]
      required :body, Amocrm::Internal::Type::Unknown

      # @!method initialize(widget_code:, body:, request_options: {})
      #   @param widget_code [String]
      #   @param body [Object]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
