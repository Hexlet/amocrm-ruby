# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::WebsiteButtons#connect_online_chat
    class WebsiteButtonConnectOnlineChatParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute source_id
      #
      #   @return [Integer]
      required :source_id, Integer

      # @!method initialize(source_id:, request_options: {})
      #   @param source_id [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
