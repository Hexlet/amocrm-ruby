# typed: strong

module Amocrm
  module Resources
    class CustomerTransactions
      # Create transactions for a customer.
      sig do
        params(
          customer_id: Integer,
          body: T::Array[Amocrm::CustomerTransactionCreateParams::Body::OrHash],
          accrue_bonus: T::Boolean,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerTransactionCreateResponse::Variants)
      end
      def create(
        # Path param
        customer_id,
        # Body param
        body:,
        # Query param
        accrue_bonus: nil,
        request_options: {}
      )
      end

      # Get list of transactions.
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerTransactionListResponse::Variants)
      end
      def list(filter: nil, limit: nil, page: nil, request_options: {})
      end

      # Delete a transaction for a customer.
      sig do
        params(
          transaction_id: Integer,
          customer_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::CustomerTransactionDeleteByIDResponse::Variants
        )
      end
      def delete_by_id(transaction_id, customer_id:, request_options: {})
      end

      # Get list of transactions for a customer.
      sig do
        params(
          customer_id: Integer,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::CustomerTransactionListByCustomerResponse::Variants
        )
      end
      def list_by_customer(
        customer_id,
        filter: nil,
        limit: nil,
        page: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
