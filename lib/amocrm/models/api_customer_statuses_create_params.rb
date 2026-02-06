# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_statuses_create
    class APICustomerStatusesCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APICustomerStatusesCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICustomerStatusesCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APICustomerStatusesCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!method initialize(name:, color: nil, request_id: nil, sort: nil)
        #   @param name [String]
        #   @param color [String]
        #   @param request_id [String]
        #   @param sort [Integer]
      end
    end
  end
end
