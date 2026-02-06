# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_transactions_create
    class APICustomerTransactionsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APICustomerTransactionsCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APICustomerTransactionsCreateParams::Body] }

      # @!attribute accrue_bonus
      #
      #   @return [Boolean, nil]
      optional :accrue_bonus, Amocrm::Internal::Type::Boolean

      # @!method initialize(body:, accrue_bonus: nil, request_options: {})
      #   @param body [Array<Amocrm::Models::APICustomerTransactionsCreateParams::Body>]
      #   @param accrue_bonus [Boolean]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute price
        #
        #   @return [Integer]
        required :price, Integer

        # @!attribute comment
        #
        #   @return [String, nil]
        optional :comment, String

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(price:, comment: nil, created_at: nil, created_by: nil, request_id: nil)
        #   @param price [Integer]
        #   @param comment [String]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param request_id [String]
      end
    end
  end
end
