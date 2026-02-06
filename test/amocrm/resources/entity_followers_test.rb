# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::EntityFollowersTest < Amocrm::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_followers.list(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::EntityFollowerListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityFollowerListResponse::EntityFollowerListResponse
      in Amocrm::Models::EntityFollowerListResponse::Problem
      end
    end
  end

  def test_add_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_followers.add(0, entity_type: :leads, body: [{user_id: 0}])

    assert_pattern do
      response => Amocrm::Models::EntityFollowerAddResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityFollowerAddResponse::EntityFollowerCreateResponse
      in Amocrm::Models::EntityFollowerAddResponse::Problem
      end
    end
  end

  def test_remove_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_followers.remove(0, entity_type: :leads, body: [{user_id: 0}])

    assert_pattern do
      response => Amocrm::Models::EntityFollowerRemoveResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityFollowerRemoveResponse::EmptyResponse
      in Amocrm::Models::EntityFollowerRemoveResponse::Problem
      end
    end
  end
end
