# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::SourcesTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.sources.create(body: [{external_id: "external_id", name: "name"}])

    assert_pattern do
      response => Amocrm::Models::SourceCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::SourceCreateResponse::SourceCreateResponse
      in Amocrm::Models::SourceCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.sources.update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::SourceUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::SourceUpdateResponse::SourceUpdateResponse
      in Amocrm::Models::SourceUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.sources.list

    assert_pattern do
      response => Amocrm::Models::SourceListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::SourceListResponse::SourceListResponse
      in Amocrm::Models::SourceListResponse::Problem
      end
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @amocrm.sources.delete(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::SourceDeleteResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::SourceDeleteResponse::EmptyResponse
      in Amocrm::Models::SourceDeleteResponse::Problem
      end
    end
  end

  def test_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.sources.delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::SourceDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::SourceDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::SourceDeleteByIDResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.sources.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::SourceGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::SourceGetByIDResponse::Source
      in Amocrm::Models::SourceGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.sources.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::SourceUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::SourceUpdateByIDResponse::SourceUpdateResponse
      in Amocrm::Models::SourceUpdateByIDResponse::Problem
      end
    end
  end
end
