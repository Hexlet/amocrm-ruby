# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::SalesbotTest < Amocrm::Test::ResourceTest
  def test_run_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.salesbot.run(body: [{bot_id: 0, entity_id: 0, entity_type: 0}])

    assert_pattern do
      response => Amocrm::Models::SalesbotRunResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::SalesbotRunResponse::SalesbotRunResponse
      in Amocrm::Models::SalesbotRunResponse::Problem
      end
    end
  end
end
