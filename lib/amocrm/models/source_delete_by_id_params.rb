# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Sources#delete_by_id
    class SourceDeleteByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!method initialize(id:, request_options: {})
      #   @param id [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
