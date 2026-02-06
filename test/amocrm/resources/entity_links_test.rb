# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::EntityLinksTest < Amocrm::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.entity_links.list(:leads)

    assert_pattern do
      response => Amocrm::Models::EntityLinkListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityLinkListResponse::EntityLinksResponse
      in Amocrm::Models::EntityLinkListResponse::Problem
      end
    end
  end

  def test_link_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_links.link(:leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::EntityLinkLinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityLinkLinkResponse::EmptyResponse
      in Amocrm::Models::EntityLinkLinkResponse::Problem
      end
    end
  end

  def test_link_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_links.link_by_entity(0, entity_type: :leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::EntityLinkLinkByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityLinkLinkByEntityResponse::EmptyResponse
      in Amocrm::Models::EntityLinkLinkByEntityResponse::Problem
      end
    end
  end

  def test_list_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_links.list_by_entity(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::EntityLinkListByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityLinkListByEntityResponse::EntityLinksResponse
      in Amocrm::Models::EntityLinkListByEntityResponse::Problem
      end
    end
  end

  def test_unlink_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_links.unlink(:leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::EntityLinkUnlinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityLinkUnlinkResponse::EmptyResponse
      in Amocrm::Models::EntityLinkUnlinkResponse::Problem
      end
    end
  end

  def test_unlink_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.entity_links.unlink_by_entity(0, entity_type: :leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::EntityLinkUnlinkByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::EntityLinkUnlinkByEntityResponse::EmptyResponse
      in Amocrm::Models::EntityLinkUnlinkByEntityResponse::Problem
      end
    end
  end
end
