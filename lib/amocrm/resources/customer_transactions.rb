# frozen_string_literal: true

module Amocrm
  module Resources
    class CustomerTransactions
      # Create transactions for a customer.
      #
      # @overload create(customer_id, body:, accrue_bonus: nil, request_options: {})
      #
      # @param customer_id [Integer] Path param
      #
      # @param body [Array<Amocrm::Models::CustomerTransactionCreateParams::Body>] Body param
      #
      # @param accrue_bonus [Boolean] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse, Amocrm::Models::CustomerTransactionCreateResponse::Problem]
      #
      # @see Amocrm::Models::CustomerTransactionCreateParams
      def create(customer_id, params)
        parsed, options = Amocrm::CustomerTransactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/customers/%1$s/transactions", customer_id],
          query: parsed.except(:body),
          body: parsed[:body],
          model: Amocrm::Models::CustomerTransactionCreateResponse,
          options: options
        )
      end

      # Get list of transactions.
      #
      # @overload list(filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerTransactionListResponse::CustomerTransactionListResponse, Amocrm::Models::CustomerTransactionListResponse::Problem]
      #
      # @see Amocrm::Models::CustomerTransactionListParams
      def list(params = {})
        parsed, options = Amocrm::CustomerTransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/customers/transactions",
          query: parsed,
          model: Amocrm::Models::CustomerTransactionListResponse,
          options: options
        )
      end

      # Delete a transaction for a customer.
      #
      # @overload delete_by_id(transaction_id, customer_id:, request_options: {})
      #
      # @param transaction_id [Integer]
      # @param customer_id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomerTransactionDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerTransactionDeleteByIDParams
      def delete_by_id(transaction_id, params)
        parsed, options = Amocrm::CustomerTransactionDeleteByIDParams.dump_request(params)
        customer_id =
          parsed.delete(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/customers/%1$s/transactions/%2$s", customer_id, transaction_id],
          model: Amocrm::Models::CustomerTransactionDeleteByIDResponse,
          options: options
        )
      end

      # Get list of transactions for a customer.
      #
      # @overload list_by_customer(customer_id, filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param customer_id [Integer]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerTransactionListByCustomerResponse::CustomerTransactionListResponse, Amocrm::Models::CustomerTransactionListByCustomerResponse::Problem]
      #
      # @see Amocrm::Models::CustomerTransactionListByCustomerParams
      def list_by_customer(customer_id, params = {})
        parsed, options = Amocrm::CustomerTransactionListByCustomerParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/customers/%1$s/transactions", customer_id],
          query: parsed,
          model: Amocrm::Models::CustomerTransactionListByCustomerResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Amocrm::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
