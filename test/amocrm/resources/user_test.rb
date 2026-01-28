# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::UserTest < Amocrm::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @amocrm.user.create

    assert_pattern do
      response => Amocrm::UserAPI
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @amocrm.user.retrieve("username")

    assert_pattern do
      response => Amocrm::UserAPI
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @amocrm.user.update("username")

    assert_pattern do
      response => nil
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @amocrm.user.delete("username")

    assert_pattern do
      response => nil
    end
  end

  def test_create_with_list
    skip("Prism tests are disabled")

    response = @amocrm.user.create_with_list

    assert_pattern do
      response => Amocrm::UserAPI
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_login
    skip("Prism tests are disabled")

    response = @amocrm.user.login

    assert_pattern do
      response => String
    end
  end

  def test_logout
    skip("Prism tests are disabled")

    response = @amocrm.user.logout

    assert_pattern do
      response => nil
    end
  end
end
