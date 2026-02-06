# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#custom_field_groups_create
    class APICustomFieldGroupsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APICustomFieldGroupsCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICustomFieldGroupsCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APICustomFieldGroupsCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute request_id
        #   Client-side request id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!method initialize(name:, request_id: nil, sort: nil)
        #   @param name [String]
        #
        #   @param request_id [String] Client-side request id
        #
        #   @param sort [Integer]
      end
    end
  end
end
