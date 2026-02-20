# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CustomersTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.customers.create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::CustomerCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse
      in Amocrm::Models::CustomerCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.customers.update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::CustomerUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerUpdateResponse::CustomerUpdateResponse
      in Amocrm::Models::CustomerUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.customers.list

    assert_pattern do
      response => Amocrm::Models::CustomerListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerListResponse::CustomerListResponse
      in Amocrm::Models::CustomerListResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.customers.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CustomerGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerGetByIDResponse::Customer
      in Amocrm::Models::CustomerGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.customers.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CustomerUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerUpdateByIDResponse::CustomerUpdateResponse
      in Amocrm::Models::CustomerUpdateByIDResponse::Problem
      end
    end
  end
end
