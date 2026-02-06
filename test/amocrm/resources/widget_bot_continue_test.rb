# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::WidgetBotContinueTest < Amocrm::Test::ResourceTest
  def test_continue_required_params
    skip("Prism tests are disabled")

    response = @amocrm.widget_bot_continue.continue(0, bot_type: :salesbot, bot_id: 0)

    assert_pattern do
      response => Amocrm::Models::WidgetBotContinueContinueResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WidgetBotContinueContinueResponse::EmptyResponse
      in Amocrm::Models::WidgetBotContinueContinueResponse::Problem
      end
    end
  end
end
