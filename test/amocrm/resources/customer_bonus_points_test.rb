# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CustomerBonusPointsTest < Amocrm::Test::ResourceTest
  def test_change_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.customer_bonus_points.change(0, earn: 0)

    assert_pattern do
      response => Amocrm::Models::CustomerBonusPointChangeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomerBonusPointChangeResponse::CustomerBonusPointsResponse
      in Amocrm::Models::CustomerBonusPointChangeResponse::Problem
      end
    end
  end
end
