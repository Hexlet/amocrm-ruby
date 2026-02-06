# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::ContactChatsTest < Amocrm::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.contact_chats.list

    assert_pattern do
      response => Amocrm::Models::ContactChatListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse
      in Amocrm::Models::ContactChatListResponse::Problem
      end
    end
  end

  def test_link_required_params
    skip("Prism tests are disabled")

    response = @amocrm.contact_chats.link(body: [{chat_id: "chat_id", contact_id: 0}])

    assert_pattern do
      response => Amocrm::Models::ContactChatLinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::ContactChatLinkResponse::ContactChatLinksResponse
      in Amocrm::Models::ContactChatLinkResponse::Problem
      end
    end
  end
end
