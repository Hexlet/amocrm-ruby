# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Account#get
    class AccountGetParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute with
      #   Additional data to include (comma-separated).
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(with: nil, request_options: {})
      #   @param with [String] Additional data to include (comma-separated).
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
