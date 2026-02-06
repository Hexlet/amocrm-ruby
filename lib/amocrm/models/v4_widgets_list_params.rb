# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#widgets_list
    class V4WidgetsListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!method initialize(limit: nil, page: nil, request_options: {})
      #   @param limit [Integer]
      #   @param page [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
