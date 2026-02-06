# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::PipelineStatusesTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.pipeline_statuses.create(0, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::PipelineStatusCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineStatusCreateResponse::StatusCreateResponse
      in Amocrm::Models::PipelineStatusCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.pipeline_statuses.update(0, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::PipelineStatusUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineStatusUpdateResponse::StatusUpdateResponse
      in Amocrm::Models::PipelineStatusUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.pipeline_statuses.list(0)

    assert_pattern do
      response => Amocrm::Models::PipelineStatusListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineStatusListResponse::StatusListResponse
      in Amocrm::Models::PipelineStatusListResponse::Problem
      end
    end
  end

  def test_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.pipeline_statuses.delete_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::PipelineStatusDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineStatusDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::PipelineStatusDeleteByIDResponse::Problem
      end
    end
  end

  def test_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.pipeline_statuses.get_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::PipelineStatusGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineStatusGetByIDResponse::Status
      in Amocrm::Models::PipelineStatusGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.pipeline_statuses.update_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::PipelineStatusUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::PipelineStatusUpdateByIDResponse::StatusUpdateResponse
      in Amocrm::Models::PipelineStatusUpdateByIDResponse::Problem
      end
    end
  end
end
