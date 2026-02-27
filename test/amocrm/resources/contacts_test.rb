# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::ContactsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.contacts.create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::ContactCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::ContactCreateResponse::ContactCreateResponse
      in Amocrm::Models::ContactCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.contacts.update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::ContactUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::ContactUpdateResponse::ContactUpdateResponse
      in Amocrm::Models::ContactUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.contacts.list

    assert_pattern do
      response => Amocrm::Models::ContactListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::ContactListResponse::ContactListResponse
      in Amocrm::Models::ContactListResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.contacts.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::ContactGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::ContactGetByIDResponse::Contact
      in Amocrm::Models::ContactGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Mock server tests are disabled")

    response = @amocrm.contacts.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::ContactUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::ContactUpdateByIDResponse::ContactUpdateResponse
      in Amocrm::Models::ContactUpdateByIDResponse::Problem
      end
    end
  end
end
