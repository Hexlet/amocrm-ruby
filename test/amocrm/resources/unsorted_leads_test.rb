# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::UnsortedLeadsTest < Amocrm::Test::ResourceTest
  def test_accept
    skip("Prism tests are disabled")

    response = @amocrm.unsorted_leads.accept("uid")

    assert_pattern do
      response => Amocrm::Models::UnsortedLeadAcceptResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse
      in Amocrm::Models::UnsortedLeadAcceptResponse::Problem
      end
    end
  end

  def test_create_forms_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.unsorted_leads.create_forms(
        body: [{metadata: {}, source_name: "source_name", source_uid: "source_uid"}]
      )

    assert_pattern do
      response => Amocrm::Models::UnsortedLeadCreateFormsResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse
      in Amocrm::Models::UnsortedLeadCreateFormsResponse::Problem
      end
    end
  end

  def test_decline
    skip("Prism tests are disabled")

    response = @amocrm.unsorted_leads.decline("uid")

    assert_pattern do
      response => Amocrm::Models::UnsortedLeadDeclineResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::UnsortedLeadDeclineResponse::UnsortedAcceptResponse
      in Amocrm::Models::UnsortedLeadDeclineResponse::Problem
      end
    end
  end
end
