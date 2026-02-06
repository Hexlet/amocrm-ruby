# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::WebhooksTest < Amocrm::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.webhooks.list

    assert_pattern do
      response => Amocrm::Models::WebhookListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WebhookListResponse::WebhookListResponse
      in Amocrm::Models::WebhookListResponse::Problem
      end
    end
  end

  def test_subscribe_required_params
    skip("Prism tests are disabled")

    response = @amocrm.webhooks.subscribe(destination: "destination", settings: ["string"])

    assert_pattern do
      response => Amocrm::Models::WebhookSubscribeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WebhookSubscribeResponse::Webhook
      in Amocrm::Models::WebhookSubscribeResponse::Problem
      end
    end
  end

  def test_unsubscribe_required_params
    skip("Prism tests are disabled")

    response = @amocrm.webhooks.unsubscribe(destination: "destination")

    assert_pattern do
      response => Amocrm::Models::WebhookUnsubscribeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WebhookUnsubscribeResponse::EmptyResponse
      in Amocrm::Models::WebhookUnsubscribeResponse::Problem
      end
    end
  end
end
