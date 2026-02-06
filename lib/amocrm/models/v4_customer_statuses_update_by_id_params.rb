# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#customer_statuses_update_by_id
    class V4CustomerStatusesUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute color
      #
      #   @return [String, nil]
      optional :color, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute sort
      #
      #   @return [Integer, nil]
      optional :sort, Integer

      # @!method initialize(color: nil, name: nil, sort: nil, request_options: {})
      #   @param color [String]
      #   @param name [String]
      #   @param sort [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
