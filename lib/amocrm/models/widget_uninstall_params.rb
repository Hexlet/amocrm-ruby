# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Widgets#uninstall
    class WidgetUninstallParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute widget_code
      #
      #   @return [String]
      required :widget_code, String

      # @!method initialize(widget_code:, request_options: {})
      #   @param widget_code [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
