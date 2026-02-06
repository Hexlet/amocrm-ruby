# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#website_buttons_connect_online_chat
    class V4WebsiteButtonsConnectOnlineChatParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
