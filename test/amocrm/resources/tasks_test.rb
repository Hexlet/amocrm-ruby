# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::TasksTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.tasks.create(body: [{text: "text"}])

    assert_pattern do
      response => Amocrm::Models::TaskCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TaskCreateResponse::TaskCreateResponse
      in Amocrm::Models::TaskCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.tasks.update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::TaskUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TaskUpdateResponse::TaskUpdateResponse
      in Amocrm::Models::TaskUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.tasks.list

    assert_pattern do
      response => Amocrm::Models::TaskListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TaskListResponse::TaskListResponse
      in Amocrm::Models::TaskListResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.tasks.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::TaskGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TaskGetByIDResponse::Task
      in Amocrm::Models::TaskGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.tasks.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::TaskUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TaskUpdateByIDResponse::TaskUpdateResponse
      in Amocrm::Models::TaskUpdateByIDResponse::Problem
      end
    end
  end
end
