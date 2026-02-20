# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::TalksTest < Amocrm::Test::ResourceTest
  def test_close
    skip("Mock server tests are disabled")

    response = @amocrm.talks.close(0)

    assert_pattern do
      response => Amocrm::Models::TalkCloseResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TalkCloseResponse::EmptyResponse
      in Amocrm::Models::TalkCloseResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.talks.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::TalkGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TalkGetByIDResponse::Talk
      in Amocrm::Models::TalkGetByIDResponse::Problem
      end
    end
  end
end
