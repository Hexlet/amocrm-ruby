# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Pet#find_by_tags
    class PetFindByTagsParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute tags
      #   Tags to filter by
      #
      #   @return [Array<String>, nil]
      optional :tags, Amocrm::Internal::Type::ArrayOf[String]

      # @!method initialize(tags: nil, request_options: {})
      #   @param tags [Array<String>] Tags to filter by
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
