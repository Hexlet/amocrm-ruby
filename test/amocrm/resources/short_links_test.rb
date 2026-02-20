# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::ShortLinksTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.short_links.create(url: "url")

    assert_pattern do
      response => Amocrm::Models::ShortLinkCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::ShortLinkCreateResponse::ShortLinkCreateResponse
      in Amocrm::Models::ShortLinkCreateResponse::Problem
      end
    end
  end
end
