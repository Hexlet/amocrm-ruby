# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::EntityNotesByParentTest < Amocrm::Test::ResourceTest
  def test_create_by_parent_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.entity_notes_by_parent.create_by_parent(
        0,
        entity_type: :leads,
        body: [{note_type: "note_type"}]
      )

    assert_pattern do
      response => Amocrm::Models::EntityNotesByParentCreateByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNotesByParentCreateByParentResponse::NoteCreateResponse
      in Amocrm::Models::EntityNotesByParentCreateByParentResponse::Problem
      end
    end
  end

  def test_get_by_parent_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_notes_by_parent.get_by_parent_id(0, entity_type: :leads, entity_id: 0)

    assert_pattern do
      response => Amocrm::Models::EntityNotesByParentGetByParentIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Note
      in Amocrm::Models::EntityNotesByParentGetByParentIDResponse::Problem
      end
    end
  end

  def test_list_by_parent_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_notes_by_parent.list_by_parent(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::EntityNotesByParentListByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNotesByParentListByParentResponse::NoteListResponse
      in Amocrm::Models::EntityNotesByParentListByParentResponse::Problem
      end
    end
  end

  def test_update_by_parent_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_notes_by_parent.update_by_parent(0, entity_type: :leads, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::EntityNotesByParentUpdateByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNotesByParentUpdateByParentResponse::NoteCreateResponse
      in Amocrm::Models::EntityNotesByParentUpdateByParentResponse::Problem
      end
    end
  end

  def test_update_by_parent_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_notes_by_parent.update_by_parent_id(0, entity_type: :leads, path_entity_id: 0)

    assert_pattern do
      response => Amocrm::Models::EntityNotesByParentUpdateByParentIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse
      in Amocrm::Models::EntityNotesByParentUpdateByParentIDResponse::Problem
      end
    end
  end
end
