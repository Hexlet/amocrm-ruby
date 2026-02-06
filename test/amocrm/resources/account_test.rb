# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::AccountTest < Amocrm::Test::ResourceTest
  def test_get
    skip("Prism tests are disabled")

    response = @amocrm.account.get

    assert_pattern do
      response => Amocrm::Models::AccountGetResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::AccountGetResponse::AccountInfo
      in Amocrm::Models::AccountGetResponse::Problem
      end
    end
  end
end
