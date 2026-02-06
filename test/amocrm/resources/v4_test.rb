# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::V4Test < Amocrm::Test::ResourceTest
  def test_account_get
    skip("Prism tests are disabled")

    response = @amocrm.v4.account_get

    assert_pattern do
      response => Amocrm::Models::V4AccountGetResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4AccountGetResponse::AccountInfo
      in Amocrm::Models::V4AccountGetResponse::Problem
      end
    end
  end

  def test_calls_create_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.v4.calls_create(body: [{direction: :inbound, duration: 0, phone: "phone", source: "source"}])

    assert_pattern do
      response => Amocrm::Models::V4CallsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CallsCreateResponse::CallCreateResponse
      in Amocrm::Models::V4CallsCreateResponse::Problem
      end
    end
  end

  def test_catalog_elements_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalog_elements_create(0, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4CatalogElementsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogElementsCreateResponse::CatalogElementCreateResponse
      in Amocrm::Models::V4CatalogElementsCreateResponse::Problem
      end
    end
  end

  def test_catalog_elements_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalog_elements_get_by_id(0, catalog_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4CatalogElementsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogElementsGetByIDResponse::CatalogElement
      in Amocrm::Models::V4CatalogElementsGetByIDResponse::Problem
      end
    end
  end

  def test_catalog_elements_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalog_elements_list(0)

    assert_pattern do
      response => Amocrm::Models::V4CatalogElementsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogElementsListResponse::CatalogElementListResponse
      in Amocrm::Models::V4CatalogElementsListResponse::Problem
      end
    end
  end

  def test_catalog_elements_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalog_elements_update(0, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4CatalogElementsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogElementsUpdateResponse::CatalogElementUpdateResponse
      in Amocrm::Models::V4CatalogElementsUpdateResponse::Problem
      end
    end
  end

  def test_catalog_elements_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalog_elements_update_by_id(0, catalog_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4CatalogElementsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogElementsUpdateByIDResponse::CatalogElementUpdateResponse
      in Amocrm::Models::V4CatalogElementsUpdateByIDResponse::Problem
      end
    end
  end

  def test_catalogs_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalogs_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4CatalogsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse
      in Amocrm::Models::V4CatalogsCreateResponse::Problem
      end
    end
  end

  def test_catalogs_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalogs_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CatalogsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogsGetByIDResponse::Catalog
      in Amocrm::Models::V4CatalogsGetByIDResponse::Problem
      end
    end
  end

  def test_catalogs_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalogs_list

    assert_pattern do
      response => Amocrm::Models::V4CatalogsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogsListResponse::CatalogListResponse
      in Amocrm::Models::V4CatalogsListResponse::Problem
      end
    end
  end

  def test_catalogs_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalogs_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4CatalogsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogsUpdateResponse::CatalogUpdateResponse
      in Amocrm::Models::V4CatalogsUpdateResponse::Problem
      end
    end
  end

  def test_catalogs_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.catalogs_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CatalogsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CatalogsUpdateByIDResponse::CatalogUpdateResponse
      in Amocrm::Models::V4CatalogsUpdateByIDResponse::Problem
      end
    end
  end

  def test_companies_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.companies_create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4CompaniesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CompaniesCreateResponse::CompanyCreateResponse
      in Amocrm::Models::V4CompaniesCreateResponse::Problem
      end
    end
  end

  def test_companies_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.companies_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CompaniesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CompaniesGetByIDResponse::Company
      in Amocrm::Models::V4CompaniesGetByIDResponse::Problem
      end
    end
  end

  def test_companies_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.companies_list

    assert_pattern do
      response => Amocrm::Models::V4CompaniesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CompaniesListResponse::CompanyListResponse
      in Amocrm::Models::V4CompaniesListResponse::Problem
      end
    end
  end

  def test_companies_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.companies_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4CompaniesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CompaniesUpdateResponse::CompanyUpdateResponse
      in Amocrm::Models::V4CompaniesUpdateResponse::Problem
      end
    end
  end

  def test_companies_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.companies_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CompaniesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CompaniesUpdateByIDResponse::CompanyUpdateResponse
      in Amocrm::Models::V4CompaniesUpdateByIDResponse::Problem
      end
    end
  end

  def test_contact_chats_link_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.contact_chats_link(body: [{chat_id: "chat_id", contact_id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4ContactChatsLinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4ContactChatsLinkResponse::ContactChatLinksResponse
      in Amocrm::Models::V4ContactChatsLinkResponse::Problem
      end
    end
  end

  def test_contact_chats_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.contact_chats_list

    assert_pattern do
      response => Amocrm::Models::V4ContactChatsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4ContactChatsListResponse::ContactChatLinksResponse
      in Amocrm::Models::V4ContactChatsListResponse::Problem
      end
    end
  end

  def test_contacts_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.contacts_create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4ContactsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4ContactsCreateResponse::ContactCreateResponse
      in Amocrm::Models::V4ContactsCreateResponse::Problem
      end
    end
  end

  def test_contacts_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.contacts_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4ContactsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4ContactsGetByIDResponse::Contact
      in Amocrm::Models::V4ContactsGetByIDResponse::Problem
      end
    end
  end

  def test_contacts_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.contacts_list

    assert_pattern do
      response => Amocrm::Models::V4ContactsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4ContactsListResponse::ContactListResponse
      in Amocrm::Models::V4ContactsListResponse::Problem
      end
    end
  end

  def test_contacts_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.contacts_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4ContactsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4ContactsUpdateResponse::ContactUpdateResponse
      in Amocrm::Models::V4ContactsUpdateResponse::Problem
      end
    end
  end

  def test_contacts_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.contacts_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4ContactsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4ContactsUpdateByIDResponse::ContactUpdateResponse
      in Amocrm::Models::V4ContactsUpdateByIDResponse::Problem
      end
    end
  end

  def test_custom_field_groups_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_field_groups_create("entity_type", body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldGroupsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse
      in Amocrm::Models::V4CustomFieldGroupsCreateResponse::Problem
      end
    end
  end

  def test_custom_field_groups_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_field_groups_delete_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldGroupsDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomFieldGroupsDeleteByIDResponse::Problem
      end
    end
  end

  def test_custom_field_groups_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_field_groups_get_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldGroupsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomFieldGroupsGetByIDResponse::CustomFieldGroup
      in Amocrm::Models::V4CustomFieldGroupsGetByIDResponse::Problem
      end
    end
  end

  def test_custom_field_groups_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_field_groups_list("entity_type")

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldGroupsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomFieldGroupsListResponse::CustomFieldGroupListResponse
      in Amocrm::Models::V4CustomFieldGroupsListResponse::Problem
      end
    end
  end

  def test_custom_field_groups_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_field_groups_update_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldGroupsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomFieldGroupsUpdateByIDResponse::Problem
      end
    end
  end

  def test_custom_fields_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_fields_create("entity_type", body: [{name: "name", type: "type"}])

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse
      in Amocrm::Models::V4CustomFieldsCreateResponse::Problem
      end
    end
  end

  def test_custom_fields_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_fields_delete_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldsDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomFieldsDeleteByIDResponse::Problem
      end
    end
  end

  def test_custom_fields_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_fields_get_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomFieldsGetByIDResponse::CustomField
      in Amocrm::Models::V4CustomFieldsGetByIDResponse::Problem
      end
    end
  end

  def test_custom_fields_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_fields_list("entity_type")

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomFieldsListResponse::CustomFieldListResponse
      in Amocrm::Models::V4CustomFieldsListResponse::Problem
      end
    end
  end

  def test_custom_fields_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_fields_update("entity_type", body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomFieldsUpdateResponse::Problem
      end
    end
  end

  def test_custom_fields_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.custom_fields_update_by_id(0, entity_type: "entity_type")

    assert_pattern do
      response => Amocrm::Models::V4CustomFieldsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomFieldsUpdateByIDResponse::Problem
      end
    end
  end

  def test_customer_bonus_points_change_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_bonus_points_change(0, earn: 0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerBonusPointsChangeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerBonusPointsChangeResponse::CustomerBonusPointsResponse
      in Amocrm::Models::V4CustomerBonusPointsChangeResponse::Problem
      end
    end
  end

  def test_customer_segments_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_segments_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4CustomerSegmentsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerSegmentsCreateResponse::CustomerSegmentCreateResponse
      in Amocrm::Models::V4CustomerSegmentsCreateResponse::Problem
      end
    end
  end

  def test_customer_segments_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_segments_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerSegmentsDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomerSegmentsDeleteByIDResponse::Problem
      end
    end
  end

  def test_customer_segments_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_segments_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerSegmentsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerSegmentsGetByIDResponse::CustomerSegment
      in Amocrm::Models::V4CustomerSegmentsGetByIDResponse::Problem
      end
    end
  end

  def test_customer_segments_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_segments_list

    assert_pattern do
      response => Amocrm::Models::V4CustomerSegmentsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerSegmentsListResponse::CustomerSegmentListResponse
      in Amocrm::Models::V4CustomerSegmentsListResponse::Problem
      end
    end
  end

  def test_customer_segments_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_segments_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerSegmentsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomerSegmentsUpdateByIDResponse::Problem
      end
    end
  end

  def test_customer_statuses_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_statuses_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4CustomerStatusesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerStatusesCreateResponse::CustomerStatusCreateResponse
      in Amocrm::Models::V4CustomerStatusesCreateResponse::Problem
      end
    end
  end

  def test_customer_statuses_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_statuses_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerStatusesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomerStatusesDeleteByIDResponse::Problem
      end
    end
  end

  def test_customer_statuses_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_statuses_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerStatusesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerStatusesGetByIDResponse::CustomerStatus
      in Amocrm::Models::V4CustomerStatusesGetByIDResponse::Problem
      end
    end
  end

  def test_customer_statuses_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_statuses_list

    assert_pattern do
      response => Amocrm::Models::V4CustomerStatusesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerStatusesListResponse::CustomerStatusListResponse
      in Amocrm::Models::V4CustomerStatusesListResponse::Problem
      end
    end
  end

  def test_customer_statuses_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_statuses_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerStatusesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomerStatusesUpdateByIDResponse::Problem
      end
    end
  end

  def test_customer_transactions_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_transactions_create(0, body: [{price: 0}])

    assert_pattern do
      response => Amocrm::Models::V4CustomerTransactionsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerTransactionsCreateResponse::CustomerTransactionCreateResponse
      in Amocrm::Models::V4CustomerTransactionsCreateResponse::Problem
      end
    end
  end

  def test_customer_transactions_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_transactions_delete_by_id(0, customer_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerTransactionsDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Internal::Type::Unknown
      in Amocrm::Models::V4CustomerTransactionsDeleteByIDResponse::Problem
      end
    end
  end

  def test_customer_transactions_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_transactions_list

    assert_pattern do
      response => Amocrm::Models::V4CustomerTransactionsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerTransactionsListResponse::CustomerTransactionListResponse
      in Amocrm::Models::V4CustomerTransactionsListResponse::Problem
      end
    end
  end

  def test_customer_transactions_list_by_customer
    skip("Prism tests are disabled")

    response = @amocrm.v4.customer_transactions_list_by_customer(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomerTransactionsListByCustomerResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse
      in Amocrm::Models::V4CustomerTransactionsListByCustomerResponse::Problem
      end
    end
  end

  def test_customers_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.customers_create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4CustomersCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomersCreateResponse::CustomerCreateResponse
      in Amocrm::Models::V4CustomersCreateResponse::Problem
      end
    end
  end

  def test_customers_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.customers_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomersGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomersGetByIDResponse::Customer
      in Amocrm::Models::V4CustomersGetByIDResponse::Problem
      end
    end
  end

  def test_customers_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.customers_list

    assert_pattern do
      response => Amocrm::Models::V4CustomersListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomersListResponse::CustomerListResponse
      in Amocrm::Models::V4CustomersListResponse::Problem
      end
    end
  end

  def test_customers_mode_set_mode_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.customers_mode_set_mode(is_enabled: true, mode: :segments)

    assert_pattern do
      response => Amocrm::Models::V4CustomersModeSetModeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomersModeSetModeResponse::CustomerModeResponse
      in Amocrm::Models::V4CustomersModeSetModeResponse::Problem
      end
    end
  end

  def test_customers_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.customers_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4CustomersUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse
      in Amocrm::Models::V4CustomersUpdateResponse::Problem
      end
    end
  end

  def test_customers_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.customers_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4CustomersUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4CustomersUpdateByIDResponse::CustomerUpdateResponse
      in Amocrm::Models::V4CustomersUpdateByIDResponse::Problem
      end
    end
  end

  def test_entity_followers_add_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_followers_add(0, entity_type: :leads, body: [{user_id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4EntityFollowersAddResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse
      in Amocrm::Models::V4EntityFollowersAddResponse::Problem
      end
    end
  end

  def test_entity_followers_list_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_followers_list(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityFollowersListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse
      in Amocrm::Models::V4EntityFollowersListResponse::Problem
      end
    end
  end

  def test_entity_followers_remove_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_followers_remove(0, entity_type: :leads, body: [{user_id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4EntityFollowersRemoveResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityFollowersRemoveResponse::EmptyResponse
      in Amocrm::Models::V4EntityFollowersRemoveResponse::Problem
      end
    end
  end

  def test_entity_links_link_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_links_link(:leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4EntityLinksLinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityLinksLinkResponse::EmptyResponse
      in Amocrm::Models::V4EntityLinksLinkResponse::Problem
      end
    end
  end

  def test_entity_links_link_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_links_link_by_entity(0, entity_type: :leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4EntityLinksLinkByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityLinksLinkByEntityResponse::EmptyResponse
      in Amocrm::Models::V4EntityLinksLinkByEntityResponse::Problem
      end
    end
  end

  def test_entity_links_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_links_list(:leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityLinksListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityLinksListResponse::EntityLinksResponse
      in Amocrm::Models::V4EntityLinksListResponse::Problem
      end
    end
  end

  def test_entity_links_list_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_links_list_by_entity(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityLinksListByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse
      in Amocrm::Models::V4EntityLinksListByEntityResponse::Problem
      end
    end
  end

  def test_entity_links_unlink_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_links_unlink(:leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4EntityLinksUnlinkResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityLinksUnlinkResponse::EmptyResponse
      in Amocrm::Models::V4EntityLinksUnlinkResponse::Problem
      end
    end
  end

  def test_entity_links_unlink_by_entity_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_links_unlink_by_entity(0, entity_type: :leads, body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4EntityLinksUnlinkByEntityResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityLinksUnlinkByEntityResponse::EmptyResponse
      in Amocrm::Models::V4EntityLinksUnlinkByEntityResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_create_by_parent_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.v4.entity_notes_by_parent_create_by_parent(
        0,
        entity_type: :leads,
        body: [{note_type: "note_type"}]
      )

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesByParentCreateByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesByParentCreateByParentResponse::NoteCreateResponse
      in Amocrm::Models::V4EntityNotesByParentCreateByParentResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_get_by_parent_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_by_parent_get_by_parent_id(0, entity_type: :leads, entity_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesByParentGetByParentIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesByParentGetByParentIDResponse::Note
      in Amocrm::Models::V4EntityNotesByParentGetByParentIDResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_list_by_parent_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_by_parent_list_by_parent(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesByParentListByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse
      in Amocrm::Models::V4EntityNotesByParentListByParentResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_update_by_parent_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_by_parent_update_by_parent(0, entity_type: :leads, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesByParentUpdateByParentResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesByParentUpdateByParentResponse::NoteCreateResponse
      in Amocrm::Models::V4EntityNotesByParentUpdateByParentResponse::Problem
      end
    end
  end

  def test_entity_notes_by_parent_update_by_parent_id_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.v4.entity_notes_by_parent_update_by_parent_id(0, entity_type: :leads, path_entity_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesByParentUpdateByParentIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse
      in Amocrm::Models::V4EntityNotesByParentUpdateByParentIDResponse::Problem
      end
    end
  end

  def test_entity_notes_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_create(:leads, body: [{note_type: "note_type"}])

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesCreateResponse::NoteCreateResponse
      in Amocrm::Models::V4EntityNotesCreateResponse::Problem
      end
    end
  end

  def test_entity_notes_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_get_by_id(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesGetByIDResponse::Note
      in Amocrm::Models::V4EntityNotesGetByIDResponse::Problem
      end
    end
  end

  def test_entity_notes_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_list(:leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesListResponse::NoteListResponse
      in Amocrm::Models::V4EntityNotesListResponse::Problem
      end
    end
  end

  def test_entity_notes_pin_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_pin(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesPinResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesPinResponse::EmptyResponse
      in Amocrm::Models::V4EntityNotesPinResponse::Problem
      end
    end
  end

  def test_entity_notes_unpin_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_unpin(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesUnpinResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesUnpinResponse::EmptyResponse
      in Amocrm::Models::V4EntityNotesUnpinResponse::Problem
      end
    end
  end

  def test_entity_notes_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_update(:leads, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesUpdateResponse::NoteCreateResponse
      in Amocrm::Models::V4EntityNotesUpdateResponse::Problem
      end
    end
  end

  def test_entity_notes_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.entity_notes_update_by_id(0, entity_type: :leads)

    assert_pattern do
      response => Amocrm::Models::V4EntityNotesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EntityNotesUpdateByIDResponse::NoteCreateResponse
      in Amocrm::Models::V4EntityNotesUpdateByIDResponse::Problem
      end
    end
  end

  def test_events_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.events_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4EventsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EventsGetByIDResponse::Event
      in Amocrm::Models::V4EventsGetByIDResponse::Problem
      end
    end
  end

  def test_events_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.events_list

    assert_pattern do
      response => Amocrm::Models::V4EventsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EventsListResponse::EventListResponse
      in Amocrm::Models::V4EventsListResponse::Problem
      end
    end
  end

  def test_events_list_types
    skip("Prism tests are disabled")

    response = @amocrm.v4.events_list_types

    assert_pattern do
      response => Amocrm::Models::V4EventsListTypesResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4EventsListTypesResponse::EventTypesResponse
      in Amocrm::Models::V4EventsListTypesResponse::Problem
      end
    end
  end

  def test_leads_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.leads_create(body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4LeadsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse
      in Amocrm::Models::V4LeadsCreateResponse::Problem
      end
    end
  end

  def test_leads_create_complex_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.leads_create_complex(body: [{}])

    assert_pattern do
      response => Amocrm::Models::V4LeadsCreateComplexResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4LeadsCreateComplexResponse::LeadComplexCreateResponse
      in Amocrm::Models::V4LeadsCreateComplexResponse::Problem
      end
    end
  end

  def test_leads_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.leads_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4LeadsGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4LeadsGetByIDResponse::Lead
      in Amocrm::Models::V4LeadsGetByIDResponse::Problem
      end
    end
  end

  def test_leads_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.leads_list

    assert_pattern do
      response => Amocrm::Models::V4LeadsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4LeadsListResponse::LeadListResponse
      in Amocrm::Models::V4LeadsListResponse::Problem
      end
    end
  end

  def test_leads_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.leads_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4LeadsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4LeadsUpdateResponse::LeadUpdateResponse
      in Amocrm::Models::V4LeadsUpdateResponse::Problem
      end
    end
  end

  def test_leads_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.leads_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4LeadsUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse
      in Amocrm::Models::V4LeadsUpdateByIDResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipeline_statuses_create(0, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4PipelineStatusesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelineStatusesCreateResponse::StatusCreateResponse
      in Amocrm::Models::V4PipelineStatusesCreateResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_delete_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipeline_statuses_delete_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4PipelineStatusesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelineStatusesDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::V4PipelineStatusesDeleteByIDResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_get_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipeline_statuses_get_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4PipelineStatusesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelineStatusesGetByIDResponse::Status
      in Amocrm::Models::V4PipelineStatusesGetByIDResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipeline_statuses_list(0)

    assert_pattern do
      response => Amocrm::Models::V4PipelineStatusesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelineStatusesListResponse::StatusListResponse
      in Amocrm::Models::V4PipelineStatusesListResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipeline_statuses_update(0, body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4PipelineStatusesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelineStatusesUpdateResponse::StatusUpdateResponse
      in Amocrm::Models::V4PipelineStatusesUpdateResponse::Problem
      end
    end
  end

  def test_pipeline_statuses_update_by_id_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipeline_statuses_update_by_id(0, pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4PipelineStatusesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelineStatusesUpdateByIDResponse::StatusUpdateResponse
      in Amocrm::Models::V4PipelineStatusesUpdateByIDResponse::Problem
      end
    end
  end

  def test_pipelines_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipelines_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4PipelinesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelinesCreateResponse::PipelineCreateResponse
      in Amocrm::Models::V4PipelinesCreateResponse::Problem
      end
    end
  end

  def test_pipelines_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipelines_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4PipelinesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelinesDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::V4PipelinesDeleteByIDResponse::Problem
      end
    end
  end

  def test_pipelines_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipelines_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4PipelinesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelinesGetByIDResponse::Pipeline
      in Amocrm::Models::V4PipelinesGetByIDResponse::Problem
      end
    end
  end

  def test_pipelines_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipelines_list

    assert_pattern do
      response => Amocrm::Models::V4PipelinesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelinesListResponse::PipelineListResponse
      in Amocrm::Models::V4PipelinesListResponse::Problem
      end
    end
  end

  def test_pipelines_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipelines_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4PipelinesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse
      in Amocrm::Models::V4PipelinesUpdateResponse::Problem
      end
    end
  end

  def test_pipelines_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.pipelines_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4PipelinesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4PipelinesUpdateByIDResponse::PipelineUpdateResponse
      in Amocrm::Models::V4PipelinesUpdateByIDResponse::Problem
      end
    end
  end

  def test_roles_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.roles_create(body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4RolesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4RolesCreateResponse::RoleCreateResponse
      in Amocrm::Models::V4RolesCreateResponse::Problem
      end
    end
  end

  def test_roles_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.roles_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4RolesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4RolesDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::V4RolesDeleteByIDResponse::Problem
      end
    end
  end

  def test_roles_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.roles_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4RolesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4RolesGetByIDResponse::Role
      in Amocrm::Models::V4RolesGetByIDResponse::Problem
      end
    end
  end

  def test_roles_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.roles_list

    assert_pattern do
      response => Amocrm::Models::V4RolesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4RolesListResponse::RoleListResponse
      in Amocrm::Models::V4RolesListResponse::Problem
      end
    end
  end

  def test_roles_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.roles_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4RolesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4RolesUpdateByIDResponse::Role
      in Amocrm::Models::V4RolesUpdateByIDResponse::Problem
      end
    end
  end

  def test_short_links_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.short_links_create(url: "url")

    assert_pattern do
      response => Amocrm::Models::V4ShortLinksCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4ShortLinksCreateResponse::ShortLinkCreateResponse
      in Amocrm::Models::V4ShortLinksCreateResponse::Problem
      end
    end
  end

  def test_sources_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.sources_create(body: [{external_id: "external_id", name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4SourcesCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4SourcesCreateResponse::SourceCreateResponse
      in Amocrm::Models::V4SourcesCreateResponse::Problem
      end
    end
  end

  def test_sources_delete_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.sources_delete(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4SourcesDeleteResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4SourcesDeleteResponse::EmptyResponse
      in Amocrm::Models::V4SourcesDeleteResponse::Problem
      end
    end
  end

  def test_sources_delete_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.sources_delete_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4SourcesDeleteByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4SourcesDeleteByIDResponse::EmptyResponse
      in Amocrm::Models::V4SourcesDeleteByIDResponse::Problem
      end
    end
  end

  def test_sources_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.sources_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4SourcesGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4SourcesGetByIDResponse::Source
      in Amocrm::Models::V4SourcesGetByIDResponse::Problem
      end
    end
  end

  def test_sources_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.sources_list

    assert_pattern do
      response => Amocrm::Models::V4SourcesListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4SourcesListResponse::SourceListResponse
      in Amocrm::Models::V4SourcesListResponse::Problem
      end
    end
  end

  def test_sources_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.sources_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4SourcesUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4SourcesUpdateResponse::SourceUpdateResponse
      in Amocrm::Models::V4SourcesUpdateResponse::Problem
      end
    end
  end

  def test_sources_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.sources_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4SourcesUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4SourcesUpdateByIDResponse::SourceUpdateResponse
      in Amocrm::Models::V4SourcesUpdateByIDResponse::Problem
      end
    end
  end

  def test_tags_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.tags_create(:leads, body: [{name: "name"}])

    assert_pattern do
      response => Amocrm::Models::V4TagsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TagsCreateResponse::TagCreateResponse
      in Amocrm::Models::V4TagsCreateResponse::Problem
      end
    end
  end

  def test_tags_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.tags_list(:leads)

    assert_pattern do
      response => Amocrm::Models::V4TagsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TagsListResponse::TagListResponse
      in Amocrm::Models::V4TagsListResponse::Problem
      end
    end
  end

  def test_talks_close
    skip("Prism tests are disabled")

    response = @amocrm.v4.talks_close(0)

    assert_pattern do
      response => Amocrm::Models::V4TalksCloseResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TalksCloseResponse::EmptyResponse
      in Amocrm::Models::V4TalksCloseResponse::Problem
      end
    end
  end

  def test_talks_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.talks_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4TalksGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TalksGetByIDResponse::Talk
      in Amocrm::Models::V4TalksGetByIDResponse::Problem
      end
    end
  end

  def test_tasks_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.tasks_create(body: [{text: "text"}])

    assert_pattern do
      response => Amocrm::Models::V4TasksCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TasksCreateResponse::TaskCreateResponse
      in Amocrm::Models::V4TasksCreateResponse::Problem
      end
    end
  end

  def test_tasks_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.tasks_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4TasksGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TasksGetByIDResponse::Task
      in Amocrm::Models::V4TasksGetByIDResponse::Problem
      end
    end
  end

  def test_tasks_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.tasks_list

    assert_pattern do
      response => Amocrm::Models::V4TasksListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TasksListResponse::TaskListResponse
      in Amocrm::Models::V4TasksListResponse::Problem
      end
    end
  end

  def test_tasks_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.tasks_update(body: [{id: 0}])

    assert_pattern do
      response => Amocrm::Models::V4TasksUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TasksUpdateResponse::TaskUpdateResponse
      in Amocrm::Models::V4TasksUpdateResponse::Problem
      end
    end
  end

  def test_tasks_update_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.tasks_update_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4TasksUpdateByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4TasksUpdateByIDResponse::TaskUpdateResponse
      in Amocrm::Models::V4TasksUpdateByIDResponse::Problem
      end
    end
  end

  def test_unsorted_leads_accept
    skip("Prism tests are disabled")

    response = @amocrm.v4.unsorted_leads_accept("uid")

    assert_pattern do
      response => Amocrm::Models::V4UnsortedLeadsAcceptResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4UnsortedLeadsAcceptResponse::UnsortedAcceptResponse
      in Amocrm::Models::V4UnsortedLeadsAcceptResponse::Problem
      end
    end
  end

  def test_unsorted_leads_create_forms_required_params
    skip("Prism tests are disabled")

    response =
      @amocrm.v4.unsorted_leads_create_forms(
        body: [{metadata: {}, source_name: "source_name", source_uid: "source_uid"}]
      )

    assert_pattern do
      response => Amocrm::Models::V4UnsortedLeadsCreateFormsResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4UnsortedLeadsCreateFormsResponse::UnsortedCreateResponse
      in Amocrm::Models::V4UnsortedLeadsCreateFormsResponse::Problem
      end
    end
  end

  def test_unsorted_leads_decline
    skip("Prism tests are disabled")

    response = @amocrm.v4.unsorted_leads_decline("uid")

    assert_pattern do
      response => Amocrm::Models::V4UnsortedLeadsDeclineResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4UnsortedLeadsDeclineResponse::UnsortedAcceptResponse
      in Amocrm::Models::V4UnsortedLeadsDeclineResponse::Problem
      end
    end
  end

  def test_users_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.users_create(body: [{email: "email", name: "name", password: "password"}])

    assert_pattern do
      response => Amocrm::Models::V4UsersCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4UsersCreateResponse::UserCreateResponse
      in Amocrm::Models::V4UsersCreateResponse::Problem
      end
    end
  end

  def test_users_get_by_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.users_get_by_id(0)

    assert_pattern do
      response => Amocrm::Models::V4UsersGetByIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4UsersGetByIDResponse::User
      in Amocrm::Models::V4UsersGetByIDResponse::Problem
      end
    end
  end

  def test_users_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.users_list

    assert_pattern do
      response => Amocrm::Models::V4UsersListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4UsersListResponse::UserListResponse
      in Amocrm::Models::V4UsersListResponse::Problem
      end
    end
  end

  def test_webhooks_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.webhooks_list

    assert_pattern do
      response => Amocrm::Models::V4WebhooksListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WebhooksListResponse::WebhookListResponse
      in Amocrm::Models::V4WebhooksListResponse::Problem
      end
    end
  end

  def test_webhooks_subscribe_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.webhooks_subscribe(destination: "destination", settings: ["string"])

    assert_pattern do
      response => Amocrm::Models::V4WebhooksSubscribeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WebhooksSubscribeResponse::Webhook
      in Amocrm::Models::V4WebhooksSubscribeResponse::Problem
      end
    end
  end

  def test_webhooks_unsubscribe_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.webhooks_unsubscribe(destination: "destination")

    assert_pattern do
      response => Amocrm::Models::V4WebhooksUnsubscribeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WebhooksUnsubscribeResponse::EmptyResponse
      in Amocrm::Models::V4WebhooksUnsubscribeResponse::Problem
      end
    end
  end

  def test_website_buttons_connect_online_chat
    skip("Prism tests are disabled")

    response = @amocrm.v4.website_buttons_connect_online_chat(0)

    assert_pattern do
      response => Amocrm::Models::V4WebsiteButtonsConnectOnlineChatResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WebsiteButtonsConnectOnlineChatResponse::EmptyResponse
      in Amocrm::Models::V4WebsiteButtonsConnectOnlineChatResponse::Problem
      end
    end
  end

  def test_website_buttons_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.website_buttons_create(pipeline_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4WebsiteButtonsCreateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WebsiteButtonsCreateResponse::WebsiteButtonCreateResponse
      in Amocrm::Models::V4WebsiteButtonsCreateResponse::Problem
      end
    end
  end

  def test_website_buttons_get_by_source_id
    skip("Prism tests are disabled")

    response = @amocrm.v4.website_buttons_get_by_source_id(0)

    assert_pattern do
      response => Amocrm::Models::V4WebsiteButtonsGetBySourceIDResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WebsiteButtonsGetBySourceIDResponse::WebsiteButton
      in Amocrm::Models::V4WebsiteButtonsGetBySourceIDResponse::Problem
      end
    end
  end

  def test_website_buttons_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.website_buttons_list

    assert_pattern do
      response => Amocrm::Models::V4WebsiteButtonsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse
      in Amocrm::Models::V4WebsiteButtonsListResponse::Problem
      end
    end
  end

  def test_website_buttons_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.website_buttons_update(0, trusted_websites: {add: ["string"]})

    assert_pattern do
      response => Amocrm::Models::V4WebsiteButtonsUpdateResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WebsiteButtonsUpdateResponse::WebsiteButton
      in Amocrm::Models::V4WebsiteButtonsUpdateResponse::Problem
      end
    end
  end

  def test_widget_bot_continue_continue_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.widget_bot_continue_continue(0, bot_type: :salesbot, bot_id: 0)

    assert_pattern do
      response => Amocrm::Models::V4WidgetBotContinueContinueResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WidgetBotContinueContinueResponse::EmptyResponse
      in Amocrm::Models::V4WidgetBotContinueContinueResponse::Problem
      end
    end
  end

  def test_widgets_get_by_code
    skip("Prism tests are disabled")

    response = @amocrm.v4.widgets_get_by_code("widget_code")

    assert_pattern do
      response => Amocrm::Models::V4WidgetsGetByCodeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WidgetsGetByCodeResponse::Widget
      in Amocrm::Models::V4WidgetsGetByCodeResponse::Problem
      end
    end
  end

  def test_widgets_install_required_params
    skip("Prism tests are disabled")

    response = @amocrm.v4.widgets_install("widget_code", body: {})

    assert_pattern do
      response => Amocrm::Models::V4WidgetsInstallResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WidgetsInstallResponse::Widget
      in Amocrm::Models::V4WidgetsInstallResponse::Problem
      end
    end
  end

  def test_widgets_list
    skip("Prism tests are disabled")

    response = @amocrm.v4.widgets_list

    assert_pattern do
      response => Amocrm::Models::V4WidgetsListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WidgetsListResponse::WidgetListResponse
      in Amocrm::Models::V4WidgetsListResponse::Problem
      end
    end
  end

  def test_widgets_uninstall
    skip("Prism tests are disabled")

    response = @amocrm.v4.widgets_uninstall("widget_code")

    assert_pattern do
      response => Amocrm::Models::V4WidgetsUninstallResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::V4WidgetsUninstallResponse::EmptyResponse
      in Amocrm::Models::V4WidgetsUninstallResponse::Problem
      end
    end
  end
end
