# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::WebsiteButtons#get_by_source_id
    class WebsiteButtonGetBySourceIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute source_id
      #
      #   @return [Integer]
      required :source_id, Integer

      # @!attribute with
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(source_id:, with: nil, request_options: {})
      #   @param source_id [Integer]
      #   @param with [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
