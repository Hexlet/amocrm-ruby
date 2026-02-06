# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CatalogsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.catalogs.create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::CatalogCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogCreateResponse::CatalogCreateResponse
      in Amocrm::Models::CatalogCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.catalogs.update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::CatalogUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogUpdateResponse::CatalogUpdateResponse
      in Amocrm::Models::CatalogUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.catalogs.list

    assert_pattern do
      response => Amocrm::Models::CatalogListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogListResponse::CatalogListResponse
      in Amocrm::Models::CatalogListResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.catalogs.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CatalogGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogGetByIDResponse::Catalog
      in Amocrm::Models::CatalogGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.catalogs.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CatalogUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CatalogUpdateByIDResponse::CatalogUpdateResponse
      in Amocrm::Models::CatalogUpdateByIDResponse::Problem
      end
    end
  end
end
