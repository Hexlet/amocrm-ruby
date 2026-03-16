# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CustomerStatusesTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.customer_statuses.create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::CustomerStatusCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerStatusCreateResponse::CustomerStatusCreateResponse
      in Amocrm::Models::CustomerStatusCreateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.customer_statuses.list

    assert_pattern do
      response => Amocrm::Models::CustomerStatusListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerStatusListResponse::CustomerStatusListResponse
      in Amocrm::Models::CustomerStatusListResponse::Problem
      end
    end
  end

  def test_delete_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.customer_statuses.delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CustomerStatusDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomerStatusDeleteByIDResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.customer_statuses.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CustomerStatusGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerStatusGetByIDResponse::CustomerStatus
      in Amocrm::Models::CustomerStatusGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.customer_statuses.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CustomerStatusUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomerStatusUpdateByIDResponse::Problem
      end
    end
  end
end
