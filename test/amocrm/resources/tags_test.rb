# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::TagsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.tags.create(:leads, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::TagCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TagCreateResponse::TagCreateResponse
      in Amocrm::Models::TagCreateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.tags.list(:leads)

    assert_pattern do
      response => Amocrm::Models::TagListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::TagListResponse::TagListResponse
      in Amocrm::Models::TagListResponse::Problem
      end
    end
  end
end
