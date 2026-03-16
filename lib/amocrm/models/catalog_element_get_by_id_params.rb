# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CatalogElements#get_by_id
    class CatalogElementGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute catalog_id
      #
      #   @return [Integer]
      required :catalog_id, Integer

      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!attribute with
      #   Additional data to include (comma-separated).
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(catalog_id:, id:, with: nil, request_options: {})
      #   @param catalog_id [Integer]
      #
      #   @param id [Integer]
      #
      #   @param with [String] Additional data to include (comma-separated).
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
