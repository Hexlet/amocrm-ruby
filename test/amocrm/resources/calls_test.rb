# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CallsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @amocrm.calls.create(body: [{direction: :inbound, duration: 0, phone: "phone", source: "source"}])

    assert_pattern do
      response => Amocrm::Models::CallCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CallCreateResponse::CallCreateResponse
      in Amocrm::Models::CallCreateResponse::Problem
      end
    end
  end
end
