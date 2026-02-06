# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#widgets_uninstall
    class APIWidgetsUninstallParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
