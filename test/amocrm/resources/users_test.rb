# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::UsersTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.users.create(body: [{email: "email", name: "name", password: "password"}])

    assert_pattern do
      response => Amocrm::Models::UserCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::UserCreateResponse::UserCreateResponse
      in Amocrm::Models::UserCreateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.users.list

    assert_pattern do
      response => Amocrm::Models::UserListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::UserListResponse::UserListResponse
      in Amocrm::Models::UserListResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.users.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::UserGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::UserGetByIDResponse::User
      in Amocrm::Models::UserGetByIDResponse::Problem
      end
    end
  end
end
