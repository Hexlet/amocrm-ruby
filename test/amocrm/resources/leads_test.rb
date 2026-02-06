# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::LeadsTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.leads.create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::LeadCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::LeadCreateResponse::LeadCreateResponse
      in Amocrm::Models::LeadCreateResponse::Problem
      end
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.leads.update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::LeadUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::LeadUpdateResponse::LeadUpdateResponse
      in Amocrm::Models::LeadUpdateResponse::Problem
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.leads.list

    assert_pattern do
      response => Amocrm::Models::LeadListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::LeadListResponse::LeadListResponse
      in Amocrm::Models::LeadListResponse::Problem
      end
    end
  end

  def test_create_complex_required_params
    skip("Prism tests are disabled")

    response = @amocrm.leads.create_complex(body: [{}])

    assert_pattern do
      response => Amocrm::Models::LeadCreateComplexResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::LeadCreateComplexResponse::LeadComplexCreateResponse
      in Amocrm::Models::LeadCreateComplexResponse::Problem
      end
    end
  end

  def test_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.leads.get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::LeadGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::LeadGetByIDResponse::Lead
      in Amocrm::Models::LeadGetByIDResponse::Problem
      end
    end
  end

  def test_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.leads.update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::LeadUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::LeadUpdateByIDResponse::LeadUpdateResponse
      in Amocrm::Models::LeadUpdateByIDResponse::Problem
      end
    end
  end
end
