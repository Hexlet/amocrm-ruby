# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::NoteParamsModelTest < Minitest::Test
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

  def test_create_by_parent_sends_typed_note
    body = nil
    stub_request(:post, "http://localhost/api/v4/leads/42/notes")
      .with { body = JSON.parse(_1.body) }
      .to_return_json(status: 200, body: {})

    client.entity_notes_by_parent.create_by_parent(
      42,
      entity_type: :leads,
      body: [{note_type: :common, params: Amocrm::NoteParams::Common.new(text: "Заметка")}]
    )

    assert_equal([{"note_type" => "common", "params" => {"text" => "Заметка"}}], body)
  end

  def test_note_params_are_parsed_by_their_shape
    call = coerce(
      {
        uniq: "u",
        duration: 60,
        source: "pbx",
        link: "https://x",
        phone: "+7",
        call_responsible: 504_141
      }
    )
    cashier = coerce({status: "shown", text: "t"})

    assert_kind_of(Amocrm::NoteParams::Call, call)
    assert_equal(504_141, call.call_responsible)
    assert_kind_of(Amocrm::NoteParams::MessageCashier, cashier)
    assert_equal(:shown, cashier.status)
  end

  private

  def client = Amocrm::Client.new(base_url: "http://localhost", token: "t", subdomain: "s", max_retries: 0)

  def coerce(value)
    Amocrm::NoteParams.coerce(
      value,
      state: {
        translate_names: false,
        strictness: true,
        exactness: {yes: 0, no: 0, maybe: 0},
        branched: 0
      }
    )
  end
end
