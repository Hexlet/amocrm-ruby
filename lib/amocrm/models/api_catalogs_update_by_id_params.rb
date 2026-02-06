# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#catalogs_update_by_id
    class APICatalogsUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute can_add_elements
      #
      #   @return [Boolean, nil]
      optional :can_add_elements, Amocrm::Internal::Type::Boolean

      # @!attribute can_link_multiple
      #
      #   @return [Boolean, nil]
      optional :can_link_multiple, Amocrm::Internal::Type::Boolean

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute sort
      #
      #   @return [Integer, nil]
      optional :sort, Integer

      # @!method initialize(can_add_elements: nil, can_link_multiple: nil, name: nil, request_id: nil, sort: nil, request_options: {})
      #   @param can_add_elements [Boolean]
      #   @param can_link_multiple [Boolean]
      #   @param name [String]
      #   @param request_id [String]
      #   @param sort [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
