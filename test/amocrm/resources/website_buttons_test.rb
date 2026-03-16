# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::WebsiteButtonsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.website_buttons.create(pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::WebsiteButtonCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WebsiteButtonCreateResponse::WebsiteButtonCreateResponse
      in Amocrm::Models::WebsiteButtonCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.website_buttons.update(0, trusted_websites: {add: ["string"]})

    assert_pattern do
      response => Amocrm::Models::WebsiteButtonUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WebsiteButtonUpdateResponse::WebsiteButton
      in Amocrm::Models::WebsiteButtonUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.website_buttons.list

    assert_pattern do
      response => Amocrm::Models::WebsiteButtonListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse
      in Amocrm::Models::WebsiteButtonListResponse::Problem
      end
    end
  end

  def test_connect_online_chat
    skip("Mock server tests are disabled")

    response = @amocrm.website_buttons.connect_online_chat(0)

    assert_pattern do
      response => Amocrm::Models::WebsiteButtonConnectOnlineChatResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WebsiteButtonConnectOnlineChatResponse::EmptyResponse
      in Amocrm::Models::WebsiteButtonConnectOnlineChatResponse::Problem
      end
    end
  end

  def test_get_by_source_id
    skip("Mock server tests are disabled")

    response = @amocrm.website_buttons.get_by_source_id(0)

    assert_pattern do
      response => Amocrm::Models::WebsiteButtonGetBySourceIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WebsiteButtonGetBySourceIDResponse::WebsiteButton
      in Amocrm::Models::WebsiteButtonGetBySourceIDResponse::Problem
      end
    end
  end
end
