# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::CompaniesTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.companies.create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::CompanyCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CompanyCreateResponse::CompanyCreateResponse
      in Amocrm::Models::CompanyCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.companies.update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::CompanyUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CompanyUpdateResponse::CompanyUpdateResponse
      in Amocrm::Models::CompanyUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.companies.list

    assert_pattern do
      response => Amocrm::Models::CompanyListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CompanyListResponse::CompanyListResponse
      in Amocrm::Models::CompanyListResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.companies.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CompanyGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CompanyGetByIDResponse::Company
      in Amocrm::Models::CompanyGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.companies.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::CompanyUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::CompanyUpdateByIDResponse::CompanyUpdateResponse
      in Amocrm::Models::CompanyUpdateByIDResponse::Problem
      end
    end
  end
end
