# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::StoreTest < Amocrm::Test::ResourceTest
  def test_list_inventory
    skip("Prism tests are disabled")

    response = @amocrm.store.list_inventory

    assert_pattern do
      response => ^(Amocrm::Internal::Type::HashOf[Integer])
    end
  end
end
