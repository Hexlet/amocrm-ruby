# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::PipelinesTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.pipelines.create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::PipelineCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineCreateResponse::PipelineCreateResponse
      in Amocrm::Models::PipelineCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.pipelines.update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::PipelineUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineUpdateResponse::PipelineUpdateResponse
      in Amocrm::Models::PipelineUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.pipelines.list

    assert_pattern do
      response => Amocrm::Models::PipelineListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineListResponse::PipelineListResponse
      in Amocrm::Models::PipelineListResponse::Problem
      end
    end
  end

  def test_delete_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.pipelines.delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::PipelineDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::PipelineDeleteByIDResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.pipelines.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::PipelineGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineGetByIDResponse::Pipeline
      in Amocrm::Models::PipelineGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.pipelines.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::PipelineUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineUpdateByIDResponse::PipelineUpdateResponse
      in Amocrm::Models::PipelineUpdateByIDResponse::Problem
      end
    end
  end
end
