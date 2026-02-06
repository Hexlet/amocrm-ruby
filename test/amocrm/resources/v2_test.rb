# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::V2Test < Amocrm::Test::ResourceTest
  def test_salesbot_run_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v2.salesbot_run(body: [{bot_id: 0, entity_id: 0, entity_type: 0}])

    assert_pattern do
      response => Amocrm::Models::V2SalesbotRunResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse
      in Amocrm::Models::V2SalesbotRunResponse::Problem
      end
    end
  end
end
