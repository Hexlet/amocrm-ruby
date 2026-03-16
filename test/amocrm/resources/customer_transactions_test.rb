# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CustomerTransactionsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.customer_transactions.create(0, body: [{price: 0}])

    assert_pattern do
      response => Amocrm::Models::CustomerTransactionCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse
      in Amocrm::Models::CustomerTransactionCreateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.customer_transactions.list

    assert_pattern do
      response => Amocrm::Models::CustomerTransactionListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerTransactionListResponse::CustomerTransactionListResponse
      in Amocrm::Models::CustomerTransactionListResponse::Problem
      end
    end
  end

  def test_delete_by_id_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.customer_transactions.delete_by_id(0, customer_id: 0)

    assert_pattern do
      response => Amocrm::Models::CustomerTransactionDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomerTransactionDeleteByIDResponse::Problem
      end
    end
  end

  def test_list_by_customer
    skip("Mock server tests are disabled")

    response = @amocrm.customer_transactions.list_by_customer(0)

    assert_pattern do
      response => Amocrm::Models::CustomerTransactionListByCustomerResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerTransactionListByCustomerResponse::CustomerTransactionListResponse
      in Amocrm::Models::CustomerTransactionListByCustomerResponse::Problem
      end
    end
  end
end
