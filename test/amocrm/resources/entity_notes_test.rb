# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::EntityNotesTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.entity_notes.create(:leads, body: [{note_type: "note_type"}])

    assert_pattern do
      response => Amocrm::Models::EntityNoteCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNoteCreateResponse::NoteCreateResponse
      in Amocrm::Models::EntityNoteCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.entity_notes.update(:leads, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::EntityNoteUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNoteUpdateResponse::NoteCreateResponse
      in Amocrm::Models::EntityNoteUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @amocrm.entity_notes.list(:leads)

    assert_pattern do
      response => Amocrm::Models::EntityNoteListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNoteListResponse::NoteListResponse
      in Amocrm::Models::EntityNoteListResponse::Problem
      end
    end
  end

  def test_get_by_id_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.entity_notes.get_by_id(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::EntityNoteGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNoteGetByIDResponse::Note
      in Amocrm::Models::EntityNoteGetByIDResponse::Problem
      end
    end
  end

  def test_pin_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.entity_notes.pin(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::EntityNotePinResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNotePinResponse::EmptyResponse
      in Amocrm::Models::EntityNotePinResponse::Problem
      end
    end
  end

  def test_unpin_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.entity_notes.unpin(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::EntityNoteUnpinResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNoteUnpinResponse::EmptyResponse
      in Amocrm::Models::EntityNoteUnpinResponse::Problem
      end
    end
  end

  def test_update_by_id_required_params
    skip("Mock server tests are disabled")

    response = @amocrm.entity_notes.update_by_id(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::EntityNoteUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNoteUpdateByIDResponse::NoteCreateResponse
      in Amocrm::Models::EntityNoteUpdateByIDResponse::Problem
      end
    end
  end
end
