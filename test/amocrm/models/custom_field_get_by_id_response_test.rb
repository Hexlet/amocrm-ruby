# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::CustomFieldGetByIDResponseModelTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  def before_all
    super
    WebMock.enable!
  end

  def teardown
    WebMock.reset!
    super
  end

  def after_all
    WebMock.disable!
    super
  end

  # amoCRM answers with an explicit null for code and group_id; the success
  # variant must still win the union instead of being read as a Problem.
  def test_get_by_id_with_null_fields_is_a_custom_field
    stub_request(:get, "http://localhost/api/v4/leads/custom_fields/921871")
      .to_return_json(
        status: 200,
        body: {
          id: 921_871, name: "stack", type: "select", code: nil, group_id: nil,
          currency: nil, tracking_callback: nil, remind: nil, chained_lists: nil,
          enums: [{id: 1, value: "ruby"}]
        }
      )

    response = client.custom_fields.get_by_id(921_871, entity_type: "leads")

    assert_instance_of(Amocrm::Models::CustomFieldGetByIDResponse::CustomField, response)
    assert_equal("stack", response.name)
    assert_equal(1, response.enums.size)
  end

  private

  def client = Amocrm::Client.new(base_url: "http://localhost", token: "t", subdomain: "s", max_retries: 0)
end
