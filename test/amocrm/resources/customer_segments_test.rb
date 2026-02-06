# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CustomerSegmentsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.customer_segments.create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::CustomerSegmentCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerSegmentCreateResponse::CustomerSegmentCreateResponse
      in Amocrm::Models::CustomerSegmentCreateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.customer_segments.list

    assert_pattern do
      response => Amocrm::Models::CustomerSegmentListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerSegmentListResponse::CustomerSegmentListResponse
      in Amocrm::Models::CustomerSegmentListResponse::Problem
      end
    end
  end

  def test_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.customer_segments.delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CustomerSegmentDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomerSegmentDeleteByIDResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.customer_segments.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CustomerSegmentGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerSegmentGetByIDResponse::CustomerSegment
      in Amocrm::Models::CustomerSegmentGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.customer_segments.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CustomerSegmentUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomerSegmentUpdateByIDResponse::Problem
      end
    end
  end
end
