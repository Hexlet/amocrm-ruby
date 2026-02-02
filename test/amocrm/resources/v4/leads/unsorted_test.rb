# frozen_string_literal: true

require_relative "../../../test_helper"

class Amocrm::Test::Resources::V4::Leads::UnsortedTest < Amocrm::Test::ResourceTest
  def test_accept
    skip("Prism tests are disabled")

    response = @amocrm.v4.leads.unsorted.accept("uid")

    assert_pattern do
      response => Amocrm::Models::V4::Leads::UnsortedAcceptResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse
      in Amocrm::Models::V4::Leads::UnsortedAcceptResponse::Problem
      end
    end
  end

  def test_create_forms_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.v4.leads.unsorted.create_forms(
        body: [{metadata: {}, source_name: "source_name", source_uid: "source_uid"}]
      )

    assert_pattern do
      response => Amocrm::Models::V4::Leads::UnsortedCreateFormsResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4::Leads::UnsortedCreateFormsResponse::UnsortedCreateResponse
      in Amocrm::Models::V4::Leads::UnsortedCreateFormsResponse::Problem
      end
    end
  end

  def test_decline
    skip("Prism tests are disabled")

    response = @amocrm.v4.leads.unsorted.decline("uid")

    assert_pattern do
      response => Amocrm::Models::V4::Leads::UnsortedDeclineResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4::Leads::UnsortedDeclineResponse::UnsortedAcceptResponse
      in Amocrm::Models::V4::Leads::UnsortedDeclineResponse::Problem
      end
    end
  end
end
