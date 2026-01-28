# frozen_string_literal: true

require_relative "../../test_helper"

class Amocrm::Test::Resources::Store::OrderTest < Amocrm::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @amocrm.store.order.create

    assert_pattern do
      response => Amocrm::Store::StoreOrder
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Amocrm::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Amocrm::Store::StoreOrder::Status | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @amocrm.store.order.retrieve(0)

    assert_pattern do
      response => Amocrm::Store::StoreOrder
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Amocrm::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Amocrm::Store::StoreOrder::Status | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @amocrm.store.order.delete(0)

    assert_pattern do
      response => nil
    end
  end
end
