# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CustomersModeTest < Amocrm::Test::ResourceTest
  def test_set_mode_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.customers_mode.set_mode(is_enabled: true, mode: :segments)

    assert_pattern do
      response => Amocrm::Models::CustomersModeSetModeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomersModeSetModeResponse::CustomerModeResponse
      in Amocrm::Models::CustomersModeSetModeResponse::Problem
      end
    end
  end
end
