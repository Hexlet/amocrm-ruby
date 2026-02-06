# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CustomFieldGroupsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_field_groups.create("entity_type", body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::CustomFieldGroupCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomFieldGroupCreateResponse::CustomFieldGroupCreateResponse
      in Amocrm::Models::CustomFieldGroupCreateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.custom_field_groups.list("entity_type")

    assert_pattern do
      response => Amocrm::Models::CustomFieldGroupListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomFieldGroupListResponse::CustomFieldGroupListResponse
      in Amocrm::Models::CustomFieldGroupListResponse::Problem
      end
    end
  end

  def test_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_field_groups.delete_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::CustomFieldGroupDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomFieldGroupDeleteByIDResponse::Problem
      end
    end
  end

  def test_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_field_groups.get_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::CustomFieldGroupGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CustomFieldGroupGetByIDResponse::CustomFieldGroup
      in Amocrm::Models::CustomFieldGroupGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.custom_field_groups.update_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::CustomFieldGroupUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::CustomFieldGroupUpdateByIDResponse::Problem
      end
    end
  end
end
