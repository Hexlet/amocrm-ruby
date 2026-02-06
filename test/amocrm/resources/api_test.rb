# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::APITest < Amocrm::Test::ResourceTest
  def test_account_get
    skip("Prism tests are disabled")

    response = @amocrm.api.account_get

    assert_pattern do
      response => Amocrm::Models::APIAccountGetResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIAccountGetResponse::AccountInfo
      in Amocrm::Models::APIAccountGetResponse::Problem
      end
    end
  end

  def test_calls_create_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.api.calls_create(body: [{direction: :inbound, duration: 0, phone: "phone", source: "source"}])

    assert_pattern do
      response => Amocrm::Models::APICallsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICallsCreateResponse::CallCreateResponse
      in Amocrm::Models::APICallsCreateResponse::Problem
      end
    end
  end

  def test_catalog_elements_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.catalog_elements_create(0, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APICatalogElementsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse
      in Amocrm::Models::APICatalogElementsCreateResponse::Problem
      end
    end
  end

  def test_catalog_elements_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.catalog_elements_get_by_id(0, catalog_id: 0)

    assert_pattern do
      response => Amocrm::Models::APICatalogElementsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogElementsGetByIDResponse::CatalogElement
      in Amocrm::Models::APICatalogElementsGetByIDResponse::Problem
      end
    end
  end

  def test_catalog_elements_list
    skip("Prism tests are disabled")

    response = @amocrm.api.catalog_elements_list(0)

    assert_pattern do
      response => Amocrm::Models::APICatalogElementsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogElementsListResponse::CatalogElementListResponse
      in Amocrm::Models::APICatalogElementsListResponse::Problem
      end
    end
  end

  def test_catalog_elements_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.catalog_elements_update(0, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APICatalogElementsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse
      in Amocrm::Models::APICatalogElementsUpdateResponse::Problem
      end
    end
  end

  def test_catalog_elements_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.catalog_elements_update_by_id(0, catalog_id: 0)

    assert_pattern do
      response => Amocrm::Models::APICatalogElementsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogElementsUpdateByIDResponse::CatalogElementUpdateResponse
      in Amocrm::Models::APICatalogElementsUpdateByIDResponse::Problem
      end
    end
  end

  def test_catalogs_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.catalogs_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APICatalogsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse
      in Amocrm::Models::APICatalogsCreateResponse::Problem
      end
    end
  end

  def test_catalogs_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.catalogs_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICatalogsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogsGetByIDResponse::Catalog
      in Amocrm::Models::APICatalogsGetByIDResponse::Problem
      end
    end
  end

  def test_catalogs_list
    skip("Prism tests are disabled")

    response = @amocrm.api.catalogs_list

    assert_pattern do
      response => Amocrm::Models::APICatalogsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogsListResponse::CatalogListResponse
      in Amocrm::Models::APICatalogsListResponse::Problem
      end
    end
  end

  def test_catalogs_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.catalogs_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APICatalogsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogsUpdateResponse::CatalogUpdateResponse
      in Amocrm::Models::APICatalogsUpdateResponse::Problem
      end
    end
  end

  def test_catalogs_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.catalogs_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICatalogsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICatalogsUpdateByIDResponse::CatalogUpdateResponse
      in Amocrm::Models::APICatalogsUpdateByIDResponse::Problem
      end
    end
  end

  def test_companies_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.companies_create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::APICompaniesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICompaniesCreateResponse::CompanyCreateResponse
      in Amocrm::Models::APICompaniesCreateResponse::Problem
      end
    end
  end

  def test_companies_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.companies_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICompaniesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICompaniesGetByIDResponse::Company
      in Amocrm::Models::APICompaniesGetByIDResponse::Problem
      end
    end
  end

  def test_companies_list
    skip("Prism tests are disabled")

    response = @amocrm.api.companies_list

    assert_pattern do
      response => Amocrm::Models::APICompaniesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICompaniesListResponse::CompanyListResponse
      in Amocrm::Models::APICompaniesListResponse::Problem
      end
    end
  end

  def test_companies_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.companies_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APICompaniesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICompaniesUpdateResponse::CompanyUpdateResponse
      in Amocrm::Models::APICompaniesUpdateResponse::Problem
      end
    end
  end

  def test_companies_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.companies_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICompaniesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICompaniesUpdateByIDResponse::CompanyUpdateResponse
      in Amocrm::Models::APICompaniesUpdateByIDResponse::Problem
      end
    end
  end

  def test_contact_chats_link_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.contact_chats_link(body: [{chat_id: "chat_id", contact_id: 0}])

    assert_pattern do
      response => Amocrm::Models::APIContactChatsLinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIContactChatsLinkResponse::ContactChatLinksResponse
      in Amocrm::Models::APIContactChatsLinkResponse::Problem
      end
    end
  end

  def test_contact_chats_list
    skip("Prism tests are disabled")

    response = @amocrm.api.contact_chats_list

    assert_pattern do
      response => Amocrm::Models::APIContactChatsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse
      in Amocrm::Models::APIContactChatsListResponse::Problem
      end
    end
  end

  def test_contacts_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.contacts_create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::APIContactsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIContactsCreateResponse::ContactCreateResponse
      in Amocrm::Models::APIContactsCreateResponse::Problem
      end
    end
  end

  def test_contacts_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.contacts_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIContactsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIContactsGetByIDResponse::Contact
      in Amocrm::Models::APIContactsGetByIDResponse::Problem
      end
    end
  end

  def test_contacts_list
    skip("Prism tests are disabled")

    response = @amocrm.api.contacts_list

    assert_pattern do
      response => Amocrm::Models::APIContactsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIContactsListResponse::ContactListResponse
      in Amocrm::Models::APIContactsListResponse::Problem
      end
    end
  end

  def test_contacts_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.contacts_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APIContactsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIContactsUpdateResponse::ContactUpdateResponse
      in Amocrm::Models::APIContactsUpdateResponse::Problem
      end
    end
  end

  def test_contacts_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.contacts_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIContactsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIContactsUpdateByIDResponse::ContactUpdateResponse
      in Amocrm::Models::APIContactsUpdateByIDResponse::Problem
      end
    end
  end

  def test_custom_field_groups_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_field_groups_create("entity_type", body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APICustomFieldGroupsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse
      in Amocrm::Models::APICustomFieldGroupsCreateResponse::Problem
      end
    end
  end

  def test_custom_field_groups_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_field_groups_delete_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::APICustomFieldGroupsDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomFieldGroupsDeleteByIDResponse::Problem
      end
    end
  end

  def test_custom_field_groups_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_field_groups_get_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::APICustomFieldGroupsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomFieldGroupsGetByIDResponse::CustomFieldGroup
      in Amocrm::Models::APICustomFieldGroupsGetByIDResponse::Problem
      end
    end
  end

  def test_custom_field_groups_list
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_field_groups_list("entity_type")

    assert_pattern do
      response => Amocrm::Models::APICustomFieldGroupsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse
      in Amocrm::Models::APICustomFieldGroupsListResponse::Problem
      end
    end
  end

  def test_custom_field_groups_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_field_groups_update_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::APICustomFieldGroupsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomFieldGroupsUpdateByIDResponse::Problem
      end
    end
  end

  def test_custom_fields_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_fields_create("entity_type", body: [{name: "name", type: "type"}])

    assert_pattern do
      response => Amocrm::Models::APICustomFieldsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomFieldsCreateResponse::CustomFieldCreateResponse
      in Amocrm::Models::APICustomFieldsCreateResponse::Problem
      end
    end
  end

  def test_custom_fields_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_fields_delete_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::APICustomFieldsDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomFieldsDeleteByIDResponse::Problem
      end
    end
  end

  def test_custom_fields_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_fields_get_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::APICustomFieldsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomFieldsGetByIDResponse::CustomField
      in Amocrm::Models::APICustomFieldsGetByIDResponse::Problem
      end
    end
  end

  def test_custom_fields_list
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_fields_list("entity_type")

    assert_pattern do
      response => Amocrm::Models::APICustomFieldsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse
      in Amocrm::Models::APICustomFieldsListResponse::Problem
      end
    end
  end

  def test_custom_fields_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_fields_update("entity_type", body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APICustomFieldsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomFieldsUpdateResponse::Problem
      end
    end
  end

  def test_custom_fields_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.custom_fields_update_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::APICustomFieldsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomFieldsUpdateByIDResponse::Problem
      end
    end
  end

  def test_customer_bonus_points_change_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_bonus_points_change(0, earn: 0)

    assert_pattern do
      response => Amocrm::Models::APICustomerBonusPointsChangeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerBonusPointsChangeResponse::CustomerBonusPointsResponse
      in Amocrm::Models::APICustomerBonusPointsChangeResponse::Problem
      end
    end
  end

  def test_customer_segments_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_segments_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APICustomerSegmentsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerSegmentsCreateResponse::CustomerSegmentCreateResponse
      in Amocrm::Models::APICustomerSegmentsCreateResponse::Problem
      end
    end
  end

  def test_customer_segments_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_segments_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICustomerSegmentsDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomerSegmentsDeleteByIDResponse::Problem
      end
    end
  end

  def test_customer_segments_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_segments_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICustomerSegmentsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment
      in Amocrm::Models::APICustomerSegmentsGetByIDResponse::Problem
      end
    end
  end

  def test_customer_segments_list
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_segments_list

    assert_pattern do
      response => Amocrm::Models::APICustomerSegmentsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerSegmentsListResponse::CustomerSegmentListResponse
      in Amocrm::Models::APICustomerSegmentsListResponse::Problem
      end
    end
  end

  def test_customer_segments_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_segments_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICustomerSegmentsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomerSegmentsUpdateByIDResponse::Problem
      end
    end
  end

  def test_customer_statuses_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_statuses_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APICustomerStatusesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerStatusesCreateResponse::CustomerStatusCreateResponse
      in Amocrm::Models::APICustomerStatusesCreateResponse::Problem
      end
    end
  end

  def test_customer_statuses_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_statuses_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICustomerStatusesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomerStatusesDeleteByIDResponse::Problem
      end
    end
  end

  def test_customer_statuses_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_statuses_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICustomerStatusesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerStatusesGetByIDResponse::CustomerStatus
      in Amocrm::Models::APICustomerStatusesGetByIDResponse::Problem
      end
    end
  end

  def test_customer_statuses_list
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_statuses_list

    assert_pattern do
      response => Amocrm::Models::APICustomerStatusesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse
      in Amocrm::Models::APICustomerStatusesListResponse::Problem
      end
    end
  end

  def test_customer_statuses_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_statuses_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICustomerStatusesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomerStatusesUpdateByIDResponse::Problem
      end
    end
  end

  def test_customer_transactions_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_transactions_create(0, body: [{price: 0}])

    assert_pattern do
      response => Amocrm::Models::APICustomerTransactionsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerTransactionsCreateResponse::CustomerTransactionCreateResponse
      in Amocrm::Models::APICustomerTransactionsCreateResponse::Problem
      end
    end
  end

  def test_customer_transactions_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_transactions_delete_by_id(0, customer_id: 0)

    assert_pattern do
      response => Amocrm::Models::APICustomerTransactionsDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::APICustomerTransactionsDeleteByIDResponse::Problem
      end
    end
  end

  def test_customer_transactions_list
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_transactions_list

    assert_pattern do
      response => Amocrm::Models::APICustomerTransactionsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse
      in Amocrm::Models::APICustomerTransactionsListResponse::Problem
      end
    end
  end

  def test_customer_transactions_list_by_customer
    skip("Prism tests are disabled")

    response = @amocrm.api.customer_transactions_list_by_customer(0)

    assert_pattern do
      response => Amocrm::Models::APICustomerTransactionsListByCustomerResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse
      in Amocrm::Models::APICustomerTransactionsListByCustomerResponse::Problem
      end
    end
  end

  def test_customers_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.customers_create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::APICustomersCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomersCreateResponse::CustomerCreateResponse
      in Amocrm::Models::APICustomersCreateResponse::Problem
      end
    end
  end

  def test_customers_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.customers_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICustomersGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomersGetByIDResponse::Customer
      in Amocrm::Models::APICustomersGetByIDResponse::Problem
      end
    end
  end

  def test_customers_list
    skip("Prism tests are disabled")

    response = @amocrm.api.customers_list

    assert_pattern do
      response => Amocrm::Models::APICustomersListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomersListResponse::CustomerListResponse
      in Amocrm::Models::APICustomersListResponse::Problem
      end
    end
  end

  def test_customers_mode_set_mode_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.customers_mode_set_mode(is_enabled: true, mode: :segments)

    assert_pattern do
      response => Amocrm::Models::APICustomersModeSetModeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse
      in Amocrm::Models::APICustomersModeSetModeResponse::Problem
      end
    end
  end

  def test_customers_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.customers_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APICustomersUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomersUpdateResponse::CustomerUpdateResponse
      in Amocrm::Models::APICustomersUpdateResponse::Problem
      end
    end
  end

  def test_customers_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.customers_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APICustomersUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APICustomersUpdateByIDResponse::CustomerUpdateResponse
      in Amocrm::Models::APICustomersUpdateByIDResponse::Problem
      end
    end
  end

  def test_entity_followers_add_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_followers_add(0, entity_type: :leads, body: [{user_id: 0}])

    assert_pattern do
      response => Amocrm::Models::APIEntityFollowersAddResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityFollowersAddResponse::EntityFollowerCreateResponse
      in Amocrm::Models::APIEntityFollowersAddResponse::Problem
      end
    end
  end

  def test_entity_followers_list_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_followers_list(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityFollowersListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityFollowersListResponse::EntityFollowerListResponse
      in Amocrm::Models::APIEntityFollowersListResponse::Problem
      end
    end
  end

  def test_entity_followers_remove_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_followers_remove(0, entity_type: :leads, body: [{user_id: 0}])

    assert_pattern do
      response => Amocrm::Models::APIEntityFollowersRemoveResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityFollowersRemoveResponse::EmptyResponse
      in Amocrm::Models::APIEntityFollowersRemoveResponse::Problem
      end
    end
  end

  def test_entity_links_link_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_links_link(:leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::APIEntityLinksLinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityLinksLinkResponse::EmptyResponse
      in Amocrm::Models::APIEntityLinksLinkResponse::Problem
      end
    end
  end

  def test_entity_links_link_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_links_link_by_entity(0, entity_type: :leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::APIEntityLinksLinkByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityLinksLinkByEntityResponse::EmptyResponse
      in Amocrm::Models::APIEntityLinksLinkByEntityResponse::Problem
      end
    end
  end

  def test_entity_links_list
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_links_list(:leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityLinksListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityLinksListResponse::EntityLinksResponse
      in Amocrm::Models::APIEntityLinksListResponse::Problem
      end
    end
  end

  def test_entity_links_list_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_links_list_by_entity(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityLinksListByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityLinksListByEntityResponse::EntityLinksResponse
      in Amocrm::Models::APIEntityLinksListByEntityResponse::Problem
      end
    end
  end

  def test_entity_links_unlink_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_links_unlink(:leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::APIEntityLinksUnlinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityLinksUnlinkResponse::EmptyResponse
      in Amocrm::Models::APIEntityLinksUnlinkResponse::Problem
      end
    end
  end

  def test_entity_links_unlink_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_links_unlink_by_entity(0, entity_type: :leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::APIEntityLinksUnlinkByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityLinksUnlinkByEntityResponse::EmptyResponse
      in Amocrm::Models::APIEntityLinksUnlinkByEntityResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_create_by_parent_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.api.entity_notes_by_parent_create_by_parent(
        0,
        entity_type: :leads,
        body: [{note_type: "note_type"}]
      )

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesByParentCreateByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesByParentCreateByParentResponse::NoteCreateResponse
      in Amocrm::Models::APIEntityNotesByParentCreateByParentResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_get_by_parent_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_by_parent_get_by_parent_id(0, entity_type: :leads, entity_id: 0)

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesByParentGetByParentIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesByParentGetByParentIDResponse::Note
      in Amocrm::Models::APIEntityNotesByParentGetByParentIDResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_list_by_parent_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_by_parent_list_by_parent(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesByParentListByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesByParentListByParentResponse::NoteListResponse
      in Amocrm::Models::APIEntityNotesByParentListByParentResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_update_by_parent_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_by_parent_update_by_parent(0, entity_type: :leads, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse
      in Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_update_by_parent_id_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.api.entity_notes_by_parent_update_by_parent_id(0, entity_type: :leads, path_entity_id: 0)

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse
      in Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::Problem
      end
    end
  end

  def test_entity_notes_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_create(:leads, body: [{note_type: "note_type"}])

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesCreateResponse::NoteCreateResponse
      in Amocrm::Models::APIEntityNotesCreateResponse::Problem
      end
    end
  end

  def test_entity_notes_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_get_by_id(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesGetByIDResponse::Note
      in Amocrm::Models::APIEntityNotesGetByIDResponse::Problem
      end
    end
  end

  def test_entity_notes_list
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_list(:leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesListResponse::NoteListResponse
      in Amocrm::Models::APIEntityNotesListResponse::Problem
      end
    end
  end

  def test_entity_notes_pin_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_pin(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesPinResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesPinResponse::EmptyResponse
      in Amocrm::Models::APIEntityNotesPinResponse::Problem
      end
    end
  end

  def test_entity_notes_unpin_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_unpin(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesUnpinResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesUnpinResponse::EmptyResponse
      in Amocrm::Models::APIEntityNotesUnpinResponse::Problem
      end
    end
  end

  def test_entity_notes_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_update(:leads, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesUpdateResponse::NoteCreateResponse
      in Amocrm::Models::APIEntityNotesUpdateResponse::Problem
      end
    end
  end

  def test_entity_notes_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.entity_notes_update_by_id(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::APIEntityNotesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEntityNotesUpdateByIDResponse::NoteCreateResponse
      in Amocrm::Models::APIEntityNotesUpdateByIDResponse::Problem
      end
    end
  end

  def test_events_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.events_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIEventsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEventsGetByIDResponse::Event
      in Amocrm::Models::APIEventsGetByIDResponse::Problem
      end
    end
  end

  def test_events_list
    skip("Prism tests are disabled")

    response = @amocrm.api.events_list

    assert_pattern do
      response => Amocrm::Models::APIEventsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEventsListResponse::EventListResponse
      in Amocrm::Models::APIEventsListResponse::Problem
      end
    end
  end

  def test_events_list_types
    skip("Prism tests are disabled")

    response = @amocrm.api.events_list_types

    assert_pattern do
      response => Amocrm::Models::APIEventsListTypesResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse
      in Amocrm::Models::APIEventsListTypesResponse::Problem
      end
    end
  end

  def test_leads_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.leads_create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::APILeadsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APILeadsCreateResponse::LeadCreateResponse
      in Amocrm::Models::APILeadsCreateResponse::Problem
      end
    end
  end

  def test_leads_create_complex_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.leads_create_complex(body: [{}])

    assert_pattern do
      response => Amocrm::Models::APILeadsCreateComplexResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse
      in Amocrm::Models::APILeadsCreateComplexResponse::Problem
      end
    end
  end

  def test_leads_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.leads_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APILeadsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APILeadsGetByIDResponse::Lead
      in Amocrm::Models::APILeadsGetByIDResponse::Problem
      end
    end
  end

  def test_leads_list
    skip("Prism tests are disabled")

    response = @amocrm.api.leads_list

    assert_pattern do
      response => Amocrm::Models::APILeadsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APILeadsListResponse::LeadListResponse
      in Amocrm::Models::APILeadsListResponse::Problem
      end
    end
  end

  def test_leads_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.leads_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APILeadsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APILeadsUpdateResponse::LeadUpdateResponse
      in Amocrm::Models::APILeadsUpdateResponse::Problem
      end
    end
  end

  def test_leads_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.leads_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APILeadsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse
      in Amocrm::Models::APILeadsUpdateByIDResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.pipeline_statuses_create(0, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APIPipelineStatusesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse
      in Amocrm::Models::APIPipelineStatusesCreateResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.pipeline_statuses_delete_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::APIPipelineStatusesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelineStatusesDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::APIPipelineStatusesDeleteByIDResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.pipeline_statuses_get_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::APIPipelineStatusesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelineStatusesGetByIDResponse::Status
      in Amocrm::Models::APIPipelineStatusesGetByIDResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_list
    skip("Prism tests are disabled")

    response = @amocrm.api.pipeline_statuses_list(0)

    assert_pattern do
      response => Amocrm::Models::APIPipelineStatusesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelineStatusesListResponse::StatusListResponse
      in Amocrm::Models::APIPipelineStatusesListResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.pipeline_statuses_update(0, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APIPipelineStatusesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelineStatusesUpdateResponse::StatusUpdateResponse
      in Amocrm::Models::APIPipelineStatusesUpdateResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.pipeline_statuses_update_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::APIPipelineStatusesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelineStatusesUpdateByIDResponse::StatusUpdateResponse
      in Amocrm::Models::APIPipelineStatusesUpdateByIDResponse::Problem
      end
    end
  end

  def test_pipelines_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.pipelines_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APIPipelinesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse
      in Amocrm::Models::APIPipelinesCreateResponse::Problem
      end
    end
  end

  def test_pipelines_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.pipelines_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIPipelinesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelinesDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::APIPipelinesDeleteByIDResponse::Problem
      end
    end
  end

  def test_pipelines_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.pipelines_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIPipelinesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelinesGetByIDResponse::Pipeline
      in Amocrm::Models::APIPipelinesGetByIDResponse::Problem
      end
    end
  end

  def test_pipelines_list
    skip("Prism tests are disabled")

    response = @amocrm.api.pipelines_list

    assert_pattern do
      response => Amocrm::Models::APIPipelinesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelinesListResponse::PipelineListResponse
      in Amocrm::Models::APIPipelinesListResponse::Problem
      end
    end
  end

  def test_pipelines_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.pipelines_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APIPipelinesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelinesUpdateResponse::PipelineUpdateResponse
      in Amocrm::Models::APIPipelinesUpdateResponse::Problem
      end
    end
  end

  def test_pipelines_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.pipelines_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIPipelinesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse
      in Amocrm::Models::APIPipelinesUpdateByIDResponse::Problem
      end
    end
  end

  def test_roles_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.roles_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APIRolesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIRolesCreateResponse::RoleCreateResponse
      in Amocrm::Models::APIRolesCreateResponse::Problem
      end
    end
  end

  def test_roles_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.roles_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIRolesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIRolesDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::APIRolesDeleteByIDResponse::Problem
      end
    end
  end

  def test_roles_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.roles_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIRolesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIRolesGetByIDResponse::Role
      in Amocrm::Models::APIRolesGetByIDResponse::Problem
      end
    end
  end

  def test_roles_list
    skip("Prism tests are disabled")

    response = @amocrm.api.roles_list

    assert_pattern do
      response => Amocrm::Models::APIRolesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIRolesListResponse::RoleListResponse
      in Amocrm::Models::APIRolesListResponse::Problem
      end
    end
  end

  def test_roles_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.roles_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIRolesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIRolesUpdateByIDResponse::Role
      in Amocrm::Models::APIRolesUpdateByIDResponse::Problem
      end
    end
  end

  def test_salesbot_run_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.salesbot_run(body: [{bot_id: 0, entity_id: 0, entity_type: 0}])

    assert_pattern do
      response => Amocrm::Models::APISalesbotRunResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse
      in Amocrm::Models::APISalesbotRunResponse::Problem
      end
    end
  end

  def test_short_links_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.short_links_create(url: "url")

    assert_pattern do
      response => Amocrm::Models::APIShortLinksCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIShortLinksCreateResponse::ShortLinkCreateResponse
      in Amocrm::Models::APIShortLinksCreateResponse::Problem
      end
    end
  end

  def test_sources_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.sources_create(body: [{external_id: "external_id", name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APISourcesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APISourcesCreateResponse::SourceCreateResponse
      in Amocrm::Models::APISourcesCreateResponse::Problem
      end
    end
  end

  def test_sources_delete_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.sources_delete(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APISourcesDeleteResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APISourcesDeleteResponse::EmptyResponse
      in Amocrm::Models::APISourcesDeleteResponse::Problem
      end
    end
  end

  def test_sources_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.sources_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APISourcesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APISourcesDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::APISourcesDeleteByIDResponse::Problem
      end
    end
  end

  def test_sources_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.sources_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APISourcesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APISourcesGetByIDResponse::Source
      in Amocrm::Models::APISourcesGetByIDResponse::Problem
      end
    end
  end

  def test_sources_list
    skip("Prism tests are disabled")

    response = @amocrm.api.sources_list

    assert_pattern do
      response => Amocrm::Models::APISourcesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APISourcesListResponse::SourceListResponse
      in Amocrm::Models::APISourcesListResponse::Problem
      end
    end
  end

  def test_sources_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.sources_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APISourcesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APISourcesUpdateResponse::SourceUpdateResponse
      in Amocrm::Models::APISourcesUpdateResponse::Problem
      end
    end
  end

  def test_sources_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.sources_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APISourcesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APISourcesUpdateByIDResponse::SourceUpdateResponse
      in Amocrm::Models::APISourcesUpdateByIDResponse::Problem
      end
    end
  end

  def test_tags_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.tags_create(:leads, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::APITagsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITagsCreateResponse::TagCreateResponse
      in Amocrm::Models::APITagsCreateResponse::Problem
      end
    end
  end

  def test_tags_list
    skip("Prism tests are disabled")

    response = @amocrm.api.tags_list(:leads)

    assert_pattern do
      response => Amocrm::Models::APITagsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITagsListResponse::TagListResponse
      in Amocrm::Models::APITagsListResponse::Problem
      end
    end
  end

  def test_talks_close
    skip("Prism tests are disabled")

    response = @amocrm.api.talks_close(0)

    assert_pattern do
      response => Amocrm::Models::APITalksCloseResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITalksCloseResponse::EmptyResponse
      in Amocrm::Models::APITalksCloseResponse::Problem
      end
    end
  end

  def test_talks_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.talks_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APITalksGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITalksGetByIDResponse::Talk
      in Amocrm::Models::APITalksGetByIDResponse::Problem
      end
    end
  end

  def test_tasks_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.tasks_create(body: [{text: "text"}])

    assert_pattern do
      response => Amocrm::Models::APITasksCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITasksCreateResponse::TaskCreateResponse
      in Amocrm::Models::APITasksCreateResponse::Problem
      end
    end
  end

  def test_tasks_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.tasks_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APITasksGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITasksGetByIDResponse::Task
      in Amocrm::Models::APITasksGetByIDResponse::Problem
      end
    end
  end

  def test_tasks_list
    skip("Prism tests are disabled")

    response = @amocrm.api.tasks_list

    assert_pattern do
      response => Amocrm::Models::APITasksListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITasksListResponse::TaskListResponse
      in Amocrm::Models::APITasksListResponse::Problem
      end
    end
  end

  def test_tasks_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.tasks_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::APITasksUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITasksUpdateResponse::TaskUpdateResponse
      in Amocrm::Models::APITasksUpdateResponse::Problem
      end
    end
  end

  def test_tasks_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.tasks_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APITasksUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse
      in Amocrm::Models::APITasksUpdateByIDResponse::Problem
      end
    end
  end

  def test_unsorted_leads_accept
    skip("Prism tests are disabled")

    response = @amocrm.api.unsorted_leads_accept("uid")

    assert_pattern do
      response => Amocrm::Models::APIUnsortedLeadsAcceptResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIUnsortedLeadsAcceptResponse::UnsortedAcceptResponse
      in Amocrm::Models::APIUnsortedLeadsAcceptResponse::Problem
      end
    end
  end

  def test_unsorted_leads_create_forms_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.api.unsorted_leads_create_forms(
        body: [{metadata: {}, source_name: "source_name", source_uid: "source_uid"}]
      )

    assert_pattern do
      response => Amocrm::Models::APIUnsortedLeadsCreateFormsResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse
      in Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::Problem
      end
    end
  end

  def test_unsorted_leads_decline
    skip("Prism tests are disabled")

    response = @amocrm.api.unsorted_leads_decline("uid")

    assert_pattern do
      response => Amocrm::Models::APIUnsortedLeadsDeclineResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIUnsortedLeadsDeclineResponse::UnsortedAcceptResponse
      in Amocrm::Models::APIUnsortedLeadsDeclineResponse::Problem
      end
    end
  end

  def test_users_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.users_create(body: [{email: "email", name: "name", password: "password"}])

    assert_pattern do
      response => Amocrm::Models::APIUsersCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIUsersCreateResponse::UserCreateResponse
      in Amocrm::Models::APIUsersCreateResponse::Problem
      end
    end
  end

  def test_users_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.api.users_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::APIUsersGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIUsersGetByIDResponse::User
      in Amocrm::Models::APIUsersGetByIDResponse::Problem
      end
    end
  end

  def test_users_list
    skip("Prism tests are disabled")

    response = @amocrm.api.users_list

    assert_pattern do
      response => Amocrm::Models::APIUsersListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIUsersListResponse::UserListResponse
      in Amocrm::Models::APIUsersListResponse::Problem
      end
    end
  end

  def test_webhooks_list
    skip("Prism tests are disabled")

    response = @amocrm.api.webhooks_list

    assert_pattern do
      response => Amocrm::Models::APIWebhooksListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWebhooksListResponse::WebhookListResponse
      in Amocrm::Models::APIWebhooksListResponse::Problem
      end
    end
  end

  def test_webhooks_subscribe_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.webhooks_subscribe(destination: "destination", settings: ["string"])

    assert_pattern do
      response => Amocrm::Models::APIWebhooksSubscribeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWebhooksSubscribeResponse::Webhook
      in Amocrm::Models::APIWebhooksSubscribeResponse::Problem
      end
    end
  end

  def test_webhooks_unsubscribe_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.webhooks_unsubscribe(destination: "destination")

    assert_pattern do
      response => Amocrm::Models::APIWebhooksUnsubscribeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWebhooksUnsubscribeResponse::EmptyResponse
      in Amocrm::Models::APIWebhooksUnsubscribeResponse::Problem
      end
    end
  end

  def test_website_buttons_connect_online_chat
    skip("Prism tests are disabled")

    response = @amocrm.api.website_buttons_connect_online_chat(0)

    assert_pattern do
      response => Amocrm::Models::APIWebsiteButtonsConnectOnlineChatResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWebsiteButtonsConnectOnlineChatResponse::EmptyResponse
      in Amocrm::Models::APIWebsiteButtonsConnectOnlineChatResponse::Problem
      end
    end
  end

  def test_website_buttons_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.website_buttons_create(pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::APIWebsiteButtonsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWebsiteButtonsCreateResponse::WebsiteButtonCreateResponse
      in Amocrm::Models::APIWebsiteButtonsCreateResponse::Problem
      end
    end
  end

  def test_website_buttons_get_by_source_id
    skip("Prism tests are disabled")

    response = @amocrm.api.website_buttons_get_by_source_id(0)

    assert_pattern do
      response => Amocrm::Models::APIWebsiteButtonsGetBySourceIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWebsiteButtonsGetBySourceIDResponse::WebsiteButton
      in Amocrm::Models::APIWebsiteButtonsGetBySourceIDResponse::Problem
      end
    end
  end

  def test_website_buttons_list
    skip("Prism tests are disabled")

    response = @amocrm.api.website_buttons_list

    assert_pattern do
      response => Amocrm::Models::APIWebsiteButtonsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWebsiteButtonsListResponse::WebsiteButtonListResponse
      in Amocrm::Models::APIWebsiteButtonsListResponse::Problem
      end
    end
  end

  def test_website_buttons_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.website_buttons_update(0, trusted_websites: {add: ["string"]})

    assert_pattern do
      response => Amocrm::Models::APIWebsiteButtonsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWebsiteButtonsUpdateResponse::WebsiteButton
      in Amocrm::Models::APIWebsiteButtonsUpdateResponse::Problem
      end
    end
  end

  def test_widget_bot_continue_continue_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.widget_bot_continue_continue(0, bot_type: :salesbot, bot_id: 0)

    assert_pattern do
      response => Amocrm::Models::APIWidgetBotContinueContinueResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWidgetBotContinueContinueResponse::EmptyResponse
      in Amocrm::Models::APIWidgetBotContinueContinueResponse::Problem
      end
    end
  end

  def test_widgets_get_by_code
    skip("Prism tests are disabled")

    response = @amocrm.api.widgets_get_by_code("widget_code")

    assert_pattern do
      response => Amocrm::Models::APIWidgetsGetByCodeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWidgetsGetByCodeResponse::Widget
      in Amocrm::Models::APIWidgetsGetByCodeResponse::Problem
      end
    end
  end

  def test_widgets_install_required_params
    skip("Prism tests are disabled")

    response = @amocrm.api.widgets_install("widget_code", body: {})

    assert_pattern do
      response => Amocrm::Models::APIWidgetsInstallResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWidgetsInstallResponse::Widget
      in Amocrm::Models::APIWidgetsInstallResponse::Problem
      end
    end
  end

  def test_widgets_list
    skip("Prism tests are disabled")

    response = @amocrm.api.widgets_list

    assert_pattern do
      response => Amocrm::Models::APIWidgetsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWidgetsListResponse::WidgetListResponse
      in Amocrm::Models::APIWidgetsListResponse::Problem
      end
    end
  end

  def test_widgets_uninstall
    skip("Prism tests are disabled")

    response = @amocrm.api.widgets_uninstall("widget_code")

    assert_pattern do
      response => Amocrm::Models::APIWidgetsUninstallResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::APIWidgetsUninstallResponse::EmptyResponse
      in Amocrm::Models::APIWidgetsUninstallResponse::Problem
      end
    end
  end
end
