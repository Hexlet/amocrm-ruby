# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CatalogElementsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.catalog_elements.create(0, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::CatalogElementCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogElementCreateResponse::CatalogElementCreateResponse
      in Amocrm::Models::CatalogElementCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.catalog_elements.update(0, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::CatalogElementUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogElementUpdateResponse::CatalogElementUpdateResponse
      in Amocrm::Models::CatalogElementUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.catalog_elements.list(0)

    assert_pattern do
      response => Amocrm::Models::CatalogElementListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogElementListResponse::CatalogElementListResponse
      in Amocrm::Models::CatalogElementListResponse::Problem
      end
    end
  end

  def test_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.catalog_elements.get_by_id(0, catalog_id: 0)

    assert_pattern do
      response => Amocrm::Models::CatalogElementGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogElementGetByIDResponse::CatalogElement
      in Amocrm::Models::CatalogElementGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.catalog_elements.update_by_id(0, catalog_id: 0)

    assert_pattern do
      response => Amocrm::Models::CatalogElementUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogElementUpdateByIDResponse::CatalogElementUpdateResponse
      in Amocrm::Models::CatalogElementUpdateByIDResponse::Problem
      end
    end
  end
end
