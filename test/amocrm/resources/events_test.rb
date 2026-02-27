# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::EventsTest < Amocrm::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.events.list

    assert_pattern do
      response => Amocrm::Models::EventListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EventListResponse::EventListResponse
      in Amocrm::Models::EventListResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.events.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::EventGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EventGetByIDResponse::Event
      in Amocrm::Models::EventGetByIDResponse::Problem
      end
    end
  end

  def test_list_types
    skip("Mock server tests are disabled")

    response = @amocrm.events.list_types

    assert_pattern do
      response => Amocrm::Models::EventListTypesResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EventListTypesResponse::EventTypesResponse
      in Amocrm::Models::EventListTypesResponse::Problem
      end
    end
  end
end
