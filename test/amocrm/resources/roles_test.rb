# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::RolesTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.roles.create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::RoleCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::RoleCreateResponse::RoleCreateResponse
      in Amocrm::Models::RoleCreateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.roles.list

    assert_pattern do
      response => Amocrm::Models::RoleListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::RoleListResponse::RoleListResponse
      in Amocrm::Models::RoleListResponse::Problem
      end
    end
  end

  def test_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.roles.delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::RoleDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::RoleDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::RoleDeleteByIDResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.roles.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::RoleGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::RoleGetByIDResponse::Role
      in Amocrm::Models::RoleGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.roles.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::RoleUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::RoleUpdateByIDResponse::Role
      in Amocrm::Models::RoleUpdateByIDResponse::Problem
      end
    end
  end
end
