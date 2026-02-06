# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CustomFieldsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_fields.create("entity_type", body: [{name: "name", type: "type"}])

    assert_pattern do
      response => Amocrm::Models::CustomFieldCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomFieldCreateResponse::CustomFieldCreateResponse
      in Amocrm::Models::CustomFieldCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_fields.update("entity_type", body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::CustomFieldUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomFieldUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.custom_fields.list("entity_type")

    assert_pattern do
      response => Amocrm::Models::CustomFieldListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse
      in Amocrm::Models::CustomFieldListResponse::Problem
      end
    end
  end

  def test_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_fields.delete_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::CustomFieldDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomFieldDeleteByIDResponse::Problem
      end
    end
  end

  def test_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_fields.get_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::CustomFieldGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomFieldGetByIDResponse::CustomField
      in Amocrm::Models::CustomFieldGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_fields.update_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::CustomFieldUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomFieldUpdateByIDResponse::Problem
      end
    end
  end
end
