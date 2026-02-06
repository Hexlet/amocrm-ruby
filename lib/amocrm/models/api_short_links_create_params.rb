# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#short_links_create
    class APIShortLinksCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(url:, request_options: {})
      #   @param url [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
