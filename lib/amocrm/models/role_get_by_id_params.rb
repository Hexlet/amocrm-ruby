# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Roles#get_by_id
    class RoleGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!attribute with
      #
      #   @return [String, nil]
      optional :with, String

      # @!method initialize(id:, with: nil, request_options: {})
      #   @param id [Integer]
      #   @param with [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
