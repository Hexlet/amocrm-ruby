# frozen_string_literal: true

module Amocrm
  module Resources
    class API
      # Get account info.
      #
      # @overload account_get(with: nil, request_options: {})
      #
      # @param with [String] Additional data to include (comma-separated).
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIAccountGetResponse::AccountInfo, Amocrm::Models::APIAccountGetResponse::Problem]
      #
      # @see Amocrm::Models::APIAccountGetParams
      def account_get(params = {})
        parsed, options = Amocrm::APIAccountGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/account",
          query: parsed,
          model: Amocrm::Models::APIAccountGetResponse,
          options: options
        )
      end

      # Add calls (batch).
      #
      # @overload calls_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICallsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICallsCreateResponse::CallCreateResponse, Amocrm::Models::APICallsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICallsCreateParams
      def calls_create(params)
        parsed, options = Amocrm::APICallsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/calls",
          body: parsed[:body],
          model: Amocrm::Models::APICallsCreateResponse,
          options: options
        )
      end

      # Create catalog elements.
      #
      # @overload catalog_elements_create(catalog_id, body:, request_options: {})
      #
      # @param catalog_id [Integer]
      # @param body [Array<Amocrm::Models::APICatalogElementsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogElementsCreateResponse::CatalogElementCreateResponse, Amocrm::Models::APICatalogElementsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogElementsCreateParams
      def catalog_elements_create(catalog_id, params)
        parsed, options = Amocrm::APICatalogElementsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          body: parsed[:body],
          model: Amocrm::Models::APICatalogElementsCreateResponse,
          options: options
        )
      end

      # Get catalog element by id.
      #
      # @overload catalog_elements_get_by_id(id, catalog_id:, with: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param catalog_id [Integer] Path param
      #
      # @param with [String] Query param: Additional data to include (comma-separated).
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogElementsGetByIDResponse::CatalogElement, Amocrm::Models::APICatalogElementsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogElementsGetByIDParams
      def catalog_elements_get_by_id(id, params)
        parsed, options = Amocrm::APICatalogElementsGetByIDParams.dump_request(params)
        catalog_id =
          parsed.delete(:catalog_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s/elements/%2$s", catalog_id, id],
          query: parsed,
          model: Amocrm::Models::APICatalogElementsGetByIDResponse,
          options: options
        )
      end

      # Get catalog elements list.
      #
      # @overload catalog_elements_list(catalog_id, filter: nil, limit: nil, page: nil, query: nil, request_options: {})
      #
      # @param catalog_id [Integer]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param query [String, Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogElementsListResponse::CatalogElementListResponse, Amocrm::Models::APICatalogElementsListResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogElementsListParams
      def catalog_elements_list(catalog_id, params = {})
        parsed, options = Amocrm::APICatalogElementsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          query: parsed,
          model: Amocrm::Models::APICatalogElementsListResponse,
          options: options
        )
      end

      # Update catalog elements (batch).
      #
      # @overload catalog_elements_update(catalog_id, body:, request_options: {})
      #
      # @param catalog_id [Integer]
      # @param body [Array<Amocrm::Models::APICatalogElementsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogElementsUpdateResponse::CatalogElementUpdateResponse, Amocrm::Models::APICatalogElementsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogElementsUpdateParams
      def catalog_elements_update(catalog_id, params)
        parsed, options = Amocrm::APICatalogElementsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          body: parsed[:body],
          model: Amocrm::Models::APICatalogElementsUpdateResponse,
          options: options
        )
      end

      # Update catalog element by id.
      #
      # @overload catalog_elements_update_by_id(id, catalog_id:, custom_fields_values: nil, name: nil, request_id: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param catalog_id [Integer] Path param
      #
      # @param custom_fields_values [Array<Amocrm::Models::APICatalogElementsUpdateByIDParams::CustomFieldsValue>] Body param
      #
      # @param name [String] Body param
      #
      # @param request_id [String] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogElementsUpdateByIDResponse::CatalogElementUpdateResponse, Amocrm::Models::APICatalogElementsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogElementsUpdateByIDParams
      def catalog_elements_update_by_id(id, params)
        parsed, options = Amocrm::APICatalogElementsUpdateByIDParams.dump_request(params)
        catalog_id =
          parsed.delete(:catalog_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s/elements/%2$s", catalog_id, id],
          body: parsed,
          model: Amocrm::Models::APICatalogElementsUpdateByIDResponse,
          options: options
        )
      end

      # Create catalogs.
      #
      # @overload catalogs_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICatalogsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogsCreateResponse::CatalogCreateResponse, Amocrm::Models::APICatalogsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogsCreateParams
      def catalogs_create(params)
        parsed, options = Amocrm::APICatalogsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/catalogs",
          body: parsed[:body],
          model: Amocrm::Models::APICatalogsCreateResponse,
          options: options
        )
      end

      # Get catalog by id.
      #
      # @overload catalogs_get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogsGetByIDResponse::Catalog, Amocrm::Models::APICatalogsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogsGetByIDParams
      def catalogs_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s", id],
          model: Amocrm::Models::APICatalogsGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get catalogs list.
      #
      # @overload catalogs_list(limit: nil, page: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogsListResponse::CatalogListResponse, Amocrm::Models::APICatalogsListResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogsListParams
      def catalogs_list(params = {})
        parsed, options = Amocrm::APICatalogsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/catalogs",
          query: parsed,
          model: Amocrm::Models::APICatalogsListResponse,
          options: options
        )
      end

      # Update catalogs (batch).
      #
      # @overload catalogs_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICatalogsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogsUpdateResponse::CatalogUpdateResponse, Amocrm::Models::APICatalogsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogsUpdateParams
      def catalogs_update(params)
        parsed, options = Amocrm::APICatalogsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/catalogs",
          body: parsed[:body],
          model: Amocrm::Models::APICatalogsUpdateResponse,
          options: options
        )
      end

      # Update catalog by id.
      #
      # @overload catalogs_update_by_id(id, can_add_elements: nil, can_link_multiple: nil, name: nil, request_id: nil, sort: nil, request_options: {})
      #
      # @param id [Integer]
      # @param can_add_elements [Boolean]
      # @param can_link_multiple [Boolean]
      # @param name [String]
      # @param request_id [String]
      # @param sort [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICatalogsUpdateByIDResponse::CatalogUpdateResponse, Amocrm::Models::APICatalogsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICatalogsUpdateByIDParams
      def catalogs_update_by_id(id, params = {})
        parsed, options = Amocrm::APICatalogsUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APICatalogsUpdateByIDResponse,
          options: options
        )
      end

      # Create companies.
      #
      # @overload companies_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICompaniesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICompaniesCreateResponse::CompanyCreateResponse, Amocrm::Models::APICompaniesCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICompaniesCreateParams
      def companies_create(params)
        parsed, options = Amocrm::APICompaniesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/companies",
          body: parsed[:body],
          model: Amocrm::Models::APICompaniesCreateResponse,
          options: options
        )
      end

      # Get a company by id.
      #
      # @overload companies_get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICompaniesGetByIDResponse::Company, Amocrm::Models::APICompaniesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICompaniesGetByIDParams
      def companies_get_by_id(id, params = {})
        parsed, options = Amocrm::APICompaniesGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/companies/%1$s", id],
          query: parsed,
          model: Amocrm::Models::APICompaniesGetByIDResponse,
          options: options
        )
      end

      # Get a list of companies (pagination, sorting, filtering).
      #
      # @overload companies_list(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #
      # @param filter [Object] Filtering parameters
      #
      # @param limit [Integer] Pagination limit
      #
      # @param order [Object] Sorting, e.g. order[updated_at]=asc
      #
      # @param page [Integer] Pagination page
      #
      # @param query [String, Integer] Search by query string or id
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICompaniesListResponse::CompanyListResponse, Amocrm::Models::APICompaniesListResponse::Problem]
      #
      # @see Amocrm::Models::APICompaniesListParams
      def companies_list(params = {})
        parsed, options = Amocrm::APICompaniesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/companies",
          query: parsed,
          model: Amocrm::Models::APICompaniesListResponse,
          options: options
        )
      end

      # Update companies (batch).
      #
      # @overload companies_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICompaniesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICompaniesUpdateResponse::CompanyUpdateResponse, Amocrm::Models::APICompaniesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APICompaniesUpdateParams
      def companies_update(params)
        parsed, options = Amocrm::APICompaniesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/companies",
          body: parsed[:body],
          model: Amocrm::Models::APICompaniesUpdateResponse,
          options: options
        )
      end

      # Update a company by id.
      #
      # @overload companies_update_by_id(id, _embedded: nil, created_at: nil, created_by: nil, custom_fields_values: nil, name: nil, responsible_user_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::APICompaniesUpdateByIDParams::Embedded]
      #
      # @param created_at [Integer]
      #
      # @param created_by [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::APICompaniesUpdateByIDParams::CustomFieldsValue>] Custom fields payload
      #
      # @param name [String]
      #
      # @param responsible_user_id [Integer]
      #
      # @param tags_to_add [Array<Amocrm::Models::APICompaniesUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::APICompaniesUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param updated_by [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICompaniesUpdateByIDResponse::CompanyUpdateResponse, Amocrm::Models::APICompaniesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICompaniesUpdateByIDParams
      def companies_update_by_id(id, params = {})
        parsed, options = Amocrm::APICompaniesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/companies/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APICompaniesUpdateByIDResponse,
          options: options
        )
      end

      # Link chats to contacts.
      #
      # @overload contact_chats_link(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APIContactChatsLinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIContactChatsLinkResponse::ContactChatLinksResponse, Amocrm::Models::APIContactChatsLinkResponse::Problem]
      #
      # @see Amocrm::Models::APIContactChatsLinkParams
      def contact_chats_link(params)
        parsed, options = Amocrm::APIContactChatsLinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/contacts/chats",
          body: parsed[:body],
          model: Amocrm::Models::APIContactChatsLinkResponse,
          options: options
        )
      end

      # Get list of linked chats.
      #
      # @overload contact_chats_list(filter: nil, request_options: {})
      #
      # @param filter [Object]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse, Amocrm::Models::APIContactChatsListResponse::Problem]
      #
      # @see Amocrm::Models::APIContactChatsListParams
      def contact_chats_list(params = {})
        parsed, options = Amocrm::APIContactChatsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/contacts/chats",
          query: parsed,
          model: Amocrm::Models::APIContactChatsListResponse,
          options: options
        )
      end

      # Create contacts.
      #
      # @overload contacts_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APIContactsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIContactsCreateResponse::ContactCreateResponse, Amocrm::Models::APIContactsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APIContactsCreateParams
      def contacts_create(params)
        parsed, options = Amocrm::APIContactsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/contacts",
          body: parsed[:body],
          model: Amocrm::Models::APIContactsCreateResponse,
          options: options
        )
      end

      # Get a contact by id.
      #
      # @overload contacts_get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIContactsGetByIDResponse::Contact, Amocrm::Models::APIContactsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIContactsGetByIDParams
      def contacts_get_by_id(id, params = {})
        parsed, options = Amocrm::APIContactsGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/contacts/%1$s", id],
          query: parsed,
          model: Amocrm::Models::APIContactsGetByIDResponse,
          options: options
        )
      end

      # Get a list of contacts (pagination, sorting, filtering).
      #
      # @overload contacts_list(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #
      # @param filter [Object] Filtering parameters
      #
      # @param limit [Integer] Pagination limit
      #
      # @param order [Object] Sorting, e.g. order[updated_at]=asc
      #
      # @param page [Integer] Pagination page
      #
      # @param query [String, Integer] Search by query string or id
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIContactsListResponse::ContactListResponse, Amocrm::Models::APIContactsListResponse::Problem]
      #
      # @see Amocrm::Models::APIContactsListParams
      def contacts_list(params = {})
        parsed, options = Amocrm::APIContactsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/contacts",
          query: parsed,
          model: Amocrm::Models::APIContactsListResponse,
          options: options
        )
      end

      # Update contacts (batch).
      #
      # @overload contacts_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APIContactsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIContactsUpdateResponse::ContactUpdateResponse, Amocrm::Models::APIContactsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APIContactsUpdateParams
      def contacts_update(params)
        parsed, options = Amocrm::APIContactsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/contacts",
          body: parsed[:body],
          model: Amocrm::Models::APIContactsUpdateResponse,
          options: options
        )
      end

      # Update a contact by id.
      #
      # @overload contacts_update_by_id(id, _embedded: nil, created_at: nil, created_by: nil, custom_fields_values: nil, first_name: nil, last_name: nil, name: nil, responsible_user_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::APIContactsUpdateByIDParams::Embedded]
      #
      # @param created_at [Integer]
      #
      # @param created_by [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::APIContactsUpdateByIDParams::CustomFieldsValue>] Custom fields payload
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param name [String]
      #
      # @param responsible_user_id [Integer]
      #
      # @param tags_to_add [Array<Amocrm::Models::APIContactsUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::APIContactsUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param updated_by [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIContactsUpdateByIDResponse::ContactUpdateResponse, Amocrm::Models::APIContactsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIContactsUpdateByIDParams
      def contacts_update_by_id(id, params = {})
        parsed, options = Amocrm::APIContactsUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/contacts/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APIContactsUpdateByIDResponse,
          options: options
        )
      end

      # Create custom field groups.
      #
      # @overload custom_field_groups_create(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::APICustomFieldGroupsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse, Amocrm::Models::APICustomFieldGroupsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldGroupsCreateParams
      def custom_field_groups_create(entity_type, params)
        parsed, options = Amocrm::APICustomFieldGroupsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/custom_fields/groups", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::APICustomFieldGroupsCreateResponse,
          options: options
        )
      end

      # Delete a custom field group by id.
      #
      # @overload custom_field_groups_delete_by_id(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomFieldGroupsDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldGroupsDeleteByIDParams
      def custom_field_groups_delete_by_id(id, params)
        parsed, options = Amocrm::APICustomFieldGroupsDeleteByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          model: Amocrm::Models::APICustomFieldGroupsDeleteByIDResponse,
          options: options
        )
      end

      # Get custom field group by id.
      #
      # @overload custom_field_groups_get_by_id(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomFieldGroupsGetByIDResponse::CustomFieldGroup, Amocrm::Models::APICustomFieldGroupsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldGroupsGetByIDParams
      def custom_field_groups_get_by_id(id, params)
        parsed, options = Amocrm::APICustomFieldGroupsGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          model: Amocrm::Models::APICustomFieldGroupsGetByIDResponse,
          options: options
        )
      end

      # Get custom field groups list.
      #
      # @overload custom_field_groups_list(entity_type, limit: nil, page: nil, request_options: {})
      #
      # @param entity_type [String]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse, Amocrm::Models::APICustomFieldGroupsListResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldGroupsListParams
      def custom_field_groups_list(entity_type, params = {})
        parsed, options = Amocrm::APICustomFieldGroupsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/groups", entity_type],
          query: parsed,
          model: Amocrm::Models::APICustomFieldGroupsListResponse,
          options: options
        )
      end

      # Update a custom field group by id.
      #
      # @overload custom_field_groups_update_by_id(id, entity_type:, name: nil, sort: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [String] Path param
      #
      # @param name [String] Body param
      #
      # @param sort [Integer] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomFieldGroupsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldGroupsUpdateByIDParams
      def custom_field_groups_update_by_id(id, params)
        parsed, options = Amocrm::APICustomFieldGroupsUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::APICustomFieldGroupsUpdateByIDResponse,
          options: options
        )
      end

      # Create custom fields.
      #
      # @overload custom_fields_create(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::APICustomFieldsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomFieldsCreateResponse::CustomFieldCreateResponse, Amocrm::Models::APICustomFieldsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldsCreateParams
      def custom_fields_create(entity_type, params)
        parsed, options = Amocrm::APICustomFieldsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::APICustomFieldsCreateResponse,
          options: options
        )
      end

      # Delete a custom field by id.
      #
      # @overload custom_fields_delete_by_id(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomFieldsDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldsDeleteByIDParams
      def custom_fields_delete_by_id(id, params)
        parsed, options = Amocrm::APICustomFieldsDeleteByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          model: Amocrm::Models::APICustomFieldsDeleteByIDResponse,
          options: options
        )
      end

      # Get custom field by id.
      #
      # @overload custom_fields_get_by_id(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomFieldsGetByIDResponse::CustomField, Amocrm::Models::APICustomFieldsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldsGetByIDParams
      def custom_fields_get_by_id(id, params)
        parsed, options = Amocrm::APICustomFieldsGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          model: Amocrm::Models::APICustomFieldsGetByIDResponse,
          options: options
        )
      end

      # Get custom fields list.
      #
      # @overload custom_fields_list(entity_type, limit: nil, page: nil, request_options: {})
      #
      # @param entity_type [String]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse, Amocrm::Models::APICustomFieldsListResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldsListParams
      def custom_fields_list(entity_type, params = {})
        parsed, options = Amocrm::APICustomFieldsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          query: parsed,
          model: Amocrm::Models::APICustomFieldsListResponse,
          options: options
        )
      end

      # Update custom fields (batch).
      #
      # @overload custom_fields_update(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::APICustomFieldsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomFieldsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldsUpdateParams
      def custom_fields_update(entity_type, params)
        parsed, options = Amocrm::APICustomFieldsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::APICustomFieldsUpdateResponse,
          options: options
        )
      end

      # Update a custom field by id.
      #
      # @overload custom_fields_update_by_id(id, entity_type:, code: nil, enums: nil, group_id: nil, is_deletable: nil, is_multiple: nil, is_required: nil, is_visible: nil, name: nil, settings: nil, sort: nil, type: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [String] Path param
      #
      # @param code [String] Body param
      #
      # @param enums [Array<Object>] Body param
      #
      # @param group_id [Integer] Body param
      #
      # @param is_deletable [Boolean] Body param
      #
      # @param is_multiple [Boolean] Body param
      #
      # @param is_required [Boolean] Body param
      #
      # @param is_visible [Boolean] Body param
      #
      # @param name [String] Body param
      #
      # @param settings [Object] Body param
      #
      # @param sort [Integer] Body param
      #
      # @param type [String] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomFieldsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomFieldsUpdateByIDParams
      def custom_fields_update_by_id(id, params)
        parsed, options = Amocrm::APICustomFieldsUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::APICustomFieldsUpdateByIDResponse,
          options: options
        )
      end

      # Earn or redeem bonus points.
      #
      # @overload customer_bonus_points_change(customer_id, earn:, redeem:, request_options: {})
      #
      # @param customer_id [Integer]
      # @param earn [Integer]
      # @param redeem [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerBonusPointsChangeResponse::CustomerBonusPointsResponse, Amocrm::Models::APICustomerBonusPointsChangeResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerBonusPointsChangeParams
      def customer_bonus_points_change(customer_id, params)
        parsed, options = Amocrm::APICustomerBonusPointsChangeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/customers/%1$s/bonus_points", customer_id],
          body: parsed,
          model: Amocrm::Models::APICustomerBonusPointsChangeResponse,
          options: options
        )
      end

      # Create segments.
      #
      # @overload customer_segments_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICustomerSegmentsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerSegmentsCreateResponse::CustomerSegmentCreateResponse, Amocrm::Models::APICustomerSegmentsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerSegmentsCreateParams
      def customer_segments_create(params)
        parsed, options = Amocrm::APICustomerSegmentsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers/segments",
          body: parsed[:body],
          model: Amocrm::Models::APICustomerSegmentsCreateResponse,
          options: options
        )
      end

      # Delete a segment by id.
      #
      # @overload customer_segments_delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomerSegmentsDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerSegmentsDeleteByIDParams
      def customer_segments_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/customers/segments/%1$s", id],
          model: Amocrm::Models::APICustomerSegmentsDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get segment by id.
      #
      # @overload customer_segments_get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerSegmentsGetByIDResponse::CustomerSegment, Amocrm::Models::APICustomerSegmentsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerSegmentsGetByIDParams
      def customer_segments_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/customers/segments/%1$s", id],
          model: Amocrm::Models::APICustomerSegmentsGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get segments list.
      #
      # @overload customer_segments_list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerSegmentsListResponse::CustomerSegmentListResponse, Amocrm::Models::APICustomerSegmentsListResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerSegmentsListParams
      def customer_segments_list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/customers/segments",
          model: Amocrm::Models::APICustomerSegmentsListResponse,
          options: params[:request_options]
        )
      end

      # Update a segment by id.
      #
      # @overload customer_segments_update_by_id(id, color: nil, custom_fields_values: nil, name: nil, request_options: {})
      #
      # @param id [Integer]
      # @param color [String]
      # @param custom_fields_values [Array<Amocrm::Models::APICustomerSegmentsUpdateByIDParams::CustomFieldsValue>]
      # @param name [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomerSegmentsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerSegmentsUpdateByIDParams
      def customer_segments_update_by_id(id, params = {})
        parsed, options = Amocrm::APICustomerSegmentsUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/segments/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APICustomerSegmentsUpdateByIDResponse,
          options: options
        )
      end

      # Create statuses.
      #
      # @overload customer_statuses_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICustomerStatusesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerStatusesCreateResponse::CustomerStatusCreateResponse, Amocrm::Models::APICustomerStatusesCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerStatusesCreateParams
      def customer_statuses_create(params)
        parsed, options = Amocrm::APICustomerStatusesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers/statuses",
          body: parsed[:body],
          model: Amocrm::Models::APICustomerStatusesCreateResponse,
          options: options
        )
      end

      # Delete a status by id.
      #
      # @overload customer_statuses_delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomerStatusesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerStatusesDeleteByIDParams
      def customer_statuses_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/customers/statuses/%1$s", id],
          model: Amocrm::Models::APICustomerStatusesDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get status by id.
      #
      # @overload customer_statuses_get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerStatusesGetByIDResponse::CustomerStatus, Amocrm::Models::APICustomerStatusesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerStatusesGetByIDParams
      def customer_statuses_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/customers/statuses/%1$s", id],
          model: Amocrm::Models::APICustomerStatusesGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get statuses list.
      #
      # @overload customer_statuses_list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse, Amocrm::Models::APICustomerStatusesListResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerStatusesListParams
      def customer_statuses_list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/customers/statuses",
          model: Amocrm::Models::APICustomerStatusesListResponse,
          options: params[:request_options]
        )
      end

      # Update a status by id.
      #
      # @overload customer_statuses_update_by_id(id, color: nil, name: nil, sort: nil, request_options: {})
      #
      # @param id [Integer]
      # @param color [String]
      # @param name [String]
      # @param sort [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomerStatusesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerStatusesUpdateByIDParams
      def customer_statuses_update_by_id(id, params = {})
        parsed, options = Amocrm::APICustomerStatusesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/statuses/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APICustomerStatusesUpdateByIDResponse,
          options: options
        )
      end

      # Create transactions for a customer.
      #
      # @overload customer_transactions_create(customer_id, body:, accrue_bonus: nil, request_options: {})
      #
      # @param customer_id [Integer] Path param
      #
      # @param body [Array<Amocrm::Models::APICustomerTransactionsCreateParams::Body>] Body param
      #
      # @param accrue_bonus [Boolean] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerTransactionsCreateResponse::CustomerTransactionCreateResponse, Amocrm::Models::APICustomerTransactionsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerTransactionsCreateParams
      def customer_transactions_create(customer_id, params)
        parsed, options = Amocrm::APICustomerTransactionsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/customers/%1$s/transactions", customer_id],
          query: parsed.except(:body),
          body: parsed[:body],
          model: Amocrm::Models::APICustomerTransactionsCreateResponse,
          options: options
        )
      end

      # Delete a transaction for a customer.
      #
      # @overload customer_transactions_delete_by_id(transaction_id, customer_id:, request_options: {})
      #
      # @param transaction_id [Integer]
      # @param customer_id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::APICustomerTransactionsDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerTransactionsDeleteByIDParams
      def customer_transactions_delete_by_id(transaction_id, params)
        parsed, options = Amocrm::APICustomerTransactionsDeleteByIDParams.dump_request(params)
        customer_id =
          parsed.delete(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/customers/%1$s/transactions/%2$s", customer_id, transaction_id],
          model: Amocrm::Models::APICustomerTransactionsDeleteByIDResponse,
          options: options
        )
      end

      # Get list of transactions.
      #
      # @overload customer_transactions_list(filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse, Amocrm::Models::APICustomerTransactionsListResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerTransactionsListParams
      def customer_transactions_list(params = {})
        parsed, options = Amocrm::APICustomerTransactionsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/customers/transactions",
          query: parsed,
          model: Amocrm::Models::APICustomerTransactionsListResponse,
          options: options
        )
      end

      # Get list of transactions for a customer.
      #
      # @overload customer_transactions_list_by_customer(customer_id, filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param customer_id [Integer]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse, Amocrm::Models::APICustomerTransactionsListByCustomerResponse::Problem]
      #
      # @see Amocrm::Models::APICustomerTransactionsListByCustomerParams
      def customer_transactions_list_by_customer(customer_id, params = {})
        parsed, options = Amocrm::APICustomerTransactionsListByCustomerParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/customers/%1$s/transactions", customer_id],
          query: parsed,
          model: Amocrm::Models::APICustomerTransactionsListByCustomerResponse,
          options: options
        )
      end

      # Create customers.
      #
      # @overload customers_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICustomersCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomersCreateResponse::CustomerCreateResponse, Amocrm::Models::APICustomersCreateResponse::Problem]
      #
      # @see Amocrm::Models::APICustomersCreateParams
      def customers_create(params)
        parsed, options = Amocrm::APICustomersCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers",
          body: parsed[:body],
          model: Amocrm::Models::APICustomersCreateResponse,
          options: options
        )
      end

      # Get a customer by id.
      #
      # @overload customers_get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomersGetByIDResponse::Customer, Amocrm::Models::APICustomersGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomersGetByIDParams
      def customers_get_by_id(id, params = {})
        parsed, options = Amocrm::APICustomersGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/customers/%1$s", id],
          query: parsed,
          model: Amocrm::Models::APICustomersGetByIDResponse,
          options: options
        )
      end

      # Get a list of customers.
      #
      # @overload customers_list(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #
      # @param filter [Object]
      #
      # @param limit [Integer]
      #
      # @param order [Object]
      #
      # @param page [Integer]
      #
      # @param query [String, Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomersListResponse::CustomerListResponse, Amocrm::Models::APICustomersListResponse::Problem]
      #
      # @see Amocrm::Models::APICustomersListParams
      def customers_list(params = {})
        parsed, options = Amocrm::APICustomersListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/customers",
          query: parsed,
          model: Amocrm::Models::APICustomersListResponse,
          options: options
        )
      end

      # Enable or switch customers mode.
      #
      # @overload customers_mode_set_mode(is_enabled:, mode:, request_options: {})
      #
      # @param is_enabled [Boolean]
      # @param mode [Symbol, Amocrm::Models::APICustomersModeSetModeParams::Mode]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse, Amocrm::Models::APICustomersModeSetModeResponse::Problem]
      #
      # @see Amocrm::Models::APICustomersModeSetModeParams
      def customers_mode_set_mode(params)
        parsed, options = Amocrm::APICustomersModeSetModeParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/customers/mode",
          body: parsed,
          model: Amocrm::Models::APICustomersModeSetModeResponse,
          options: options
        )
      end

      # Update customers (batch).
      #
      # @overload customers_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APICustomersUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomersUpdateResponse::CustomerUpdateResponse, Amocrm::Models::APICustomersUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APICustomersUpdateParams
      def customers_update(params)
        parsed, options = Amocrm::APICustomersUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/customers",
          body: parsed[:body],
          model: Amocrm::Models::APICustomersUpdateResponse,
          options: options
        )
      end

      # Update a customer by id.
      #
      # @overload customers_update_by_id(id, _embedded: nil, custom_fields_values: nil, main_user_id: nil, name: nil, next_date: nil, next_price: nil, periodicity: nil, responsible_user_id: nil, status_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      # @param _embedded [Amocrm::Models::APICustomersUpdateByIDParams::Embedded]
      # @param custom_fields_values [Array<Amocrm::Models::APICustomersUpdateByIDParams::CustomFieldsValue>]
      # @param main_user_id [Integer]
      # @param name [String]
      # @param next_date [Integer]
      # @param next_price [Integer]
      # @param periodicity [Integer]
      # @param responsible_user_id [Integer]
      # @param status_id [Integer]
      # @param tags_to_add [Array<Amocrm::Models::APICustomersUpdateByIDParams::TagsToAdd>]
      # @param tags_to_delete [Array<Amocrm::Models::APICustomersUpdateByIDParams::TagsToDelete>]
      # @param updated_at [Integer]
      # @param updated_by [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APICustomersUpdateByIDResponse::CustomerUpdateResponse, Amocrm::Models::APICustomersUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APICustomersUpdateByIDParams
      def customers_update_by_id(id, params = {})
        parsed, options = Amocrm::APICustomersUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APICustomersUpdateByIDResponse,
          options: options
        )
      end

      # Add followers.
      #
      # @overload entity_followers_add(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityFollowersAddParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::APIEntityFollowersAddParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityFollowersAddResponse::EntityFollowerCreateResponse, Amocrm::Models::APIEntityFollowersAddResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityFollowersAddParams
      def entity_followers_add(entity_id, params)
        parsed, options = Amocrm::APIEntityFollowersAddParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityFollowersAddResponse,
          options: options
        )
      end

      # Get followers list.
      #
      # @overload entity_followers_list(entity_id, entity_type:, limit: nil, page: nil, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityFollowersListParams::EntityType] Path param
      #
      # @param limit [Integer] Query param
      #
      # @param page [Integer] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityFollowersListResponse::EntityFollowerListResponse, Amocrm::Models::APIEntityFollowersListResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityFollowersListParams
      def entity_followers_list(entity_id, params)
        parsed, options = Amocrm::APIEntityFollowersListParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          query: parsed,
          model: Amocrm::Models::APIEntityFollowersListResponse,
          options: options
        )
      end

      # Remove followers.
      #
      # @overload entity_followers_remove(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityFollowersRemoveParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::APIEntityFollowersRemoveParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityFollowersRemoveResponse::EmptyResponse, Amocrm::Models::APIEntityFollowersRemoveResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityFollowersRemoveParams
      def entity_followers_remove(entity_id, params)
        parsed, options = Amocrm::APIEntityFollowersRemoveParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityFollowersRemoveResponse,
          options: options
        )
      end

      # Link entities (bulk).
      #
      # @overload entity_links_link(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityLinksLinkParams::EntityType]
      # @param body [Array<Amocrm::Models::APIEntityLinksLinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityLinksLinkResponse::EmptyResponse, Amocrm::Models::APIEntityLinksLinkResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityLinksLinkParams
      def entity_links_link(entity_type, params)
        parsed, options = Amocrm::APIEntityLinksLinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/link", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityLinksLinkResponse,
          options: options
        )
      end

      # Link entities for a specific entity.
      #
      # @overload entity_links_link_by_entity(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityLinksLinkByEntityParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::APIEntityLinksLinkByEntityParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityLinksLinkByEntityResponse::EmptyResponse, Amocrm::Models::APIEntityLinksLinkByEntityResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityLinksLinkByEntityParams
      def entity_links_link_by_entity(entity_id, params)
        parsed, options = Amocrm::APIEntityLinksLinkByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/link", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityLinksLinkByEntityResponse,
          options: options
        )
      end

      # Get list of linked entities (bulk).
      #
      # @overload entity_links_list(entity_type, filter: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityLinksListParams::EntityType]
      # @param filter [Object]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityLinksListResponse::EntityLinksResponse, Amocrm::Models::APIEntityLinksListResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityLinksListParams
      def entity_links_list(entity_type, params = {})
        parsed, options = Amocrm::APIEntityLinksListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/links", entity_type],
          query: parsed,
          model: Amocrm::Models::APIEntityLinksListResponse,
          options: options
        )
      end

      # Get links for a specific entity.
      #
      # @overload entity_links_list_by_entity(entity_id, entity_type:, request_options: {})
      #
      # @param entity_id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::APIEntityLinksListByEntityParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityLinksListByEntityResponse::EntityLinksResponse, Amocrm::Models::APIEntityLinksListByEntityResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityLinksListByEntityParams
      def entity_links_list_by_entity(entity_id, params)
        parsed, options = Amocrm::APIEntityLinksListByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/links", entity_type, entity_id],
          model: Amocrm::Models::APIEntityLinksListByEntityResponse,
          options: options
        )
      end

      # Unlink entities (bulk).
      #
      # @overload entity_links_unlink(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityLinksUnlinkParams::EntityType]
      # @param body [Array<Amocrm::Models::APIEntityLinksUnlinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityLinksUnlinkResponse::EmptyResponse, Amocrm::Models::APIEntityLinksUnlinkResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityLinksUnlinkParams
      def entity_links_unlink(entity_type, params)
        parsed, options = Amocrm::APIEntityLinksUnlinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/unlink", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityLinksUnlinkResponse,
          options: options
        )
      end

      # Unlink entities for a specific entity.
      #
      # @overload entity_links_unlink_by_entity(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityLinksUnlinkByEntityParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::APIEntityLinksUnlinkByEntityParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityLinksUnlinkByEntityResponse::EmptyResponse, Amocrm::Models::APIEntityLinksUnlinkByEntityResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityLinksUnlinkByEntityParams
      def entity_links_unlink_by_entity(entity_id, params)
        parsed, options = Amocrm::APIEntityLinksUnlinkByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/unlink", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityLinksUnlinkByEntityResponse,
          options: options
        )
      end

      # Create notes for a specific entity.
      #
      # @overload entity_notes_by_parent_create_by_parent(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesByParentCreateByParentParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::APIEntityNotesByParentCreateByParentParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesByParentCreateByParentResponse::NoteCreateResponse, Amocrm::Models::APIEntityNotesByParentCreateByParentResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesByParentCreateByParentParams
      def entity_notes_by_parent_create_by_parent(entity_id, params)
        parsed, options = Amocrm::APIEntityNotesByParentCreateByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityNotesByParentCreateByParentResponse,
          options: options
        )
      end

      # Get note by id for a specific entity.
      #
      # @overload entity_notes_by_parent_get_by_parent_id(note_id, entity_type:, entity_id:, with: nil, request_options: {})
      #
      # @param note_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesByParentGetByParentIDParams::EntityType] Path param
      #
      # @param entity_id [Integer] Path param
      #
      # @param with [String] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesByParentGetByParentIDResponse::Note, Amocrm::Models::APIEntityNotesByParentGetByParentIDResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesByParentGetByParentIDParams
      def entity_notes_by_parent_get_by_parent_id(note_id, params)
        parsed, options = Amocrm::APIEntityNotesByParentGetByParentIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        entity_id =
          parsed.delete(:entity_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/notes/%3$s", entity_type, entity_id, note_id],
          query: parsed,
          model: Amocrm::Models::APIEntityNotesByParentGetByParentIDResponse,
          options: options
        )
      end

      # Get notes list for a specific entity.
      #
      # @overload entity_notes_by_parent_list_by_parent(entity_id, entity_type:, filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesByParentListByParentParams::EntityType] Path param
      #
      # @param filter [Object] Query param
      #
      # @param limit [Integer] Query param
      #
      # @param page [Integer] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesByParentListByParentResponse::NoteListResponse, Amocrm::Models::APIEntityNotesByParentListByParentResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesByParentListByParentParams
      def entity_notes_by_parent_list_by_parent(entity_id, params)
        parsed, options = Amocrm::APIEntityNotesByParentListByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          query: parsed,
          model: Amocrm::Models::APIEntityNotesByParentListByParentResponse,
          options: options
        )
      end

      # Update notes for a specific entity (batch).
      #
      # @overload entity_notes_by_parent_update_by_parent(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesByParentUpdateByParentParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::APIEntityNotesByParentUpdateByParentParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse, Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesByParentUpdateByParentParams
      def entity_notes_by_parent_update_by_parent(entity_id, params)
        parsed, options = Amocrm::APIEntityNotesByParentUpdateByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse,
          options: options
        )
      end

      # Update note by id for a specific entity.
      #
      # @overload entity_notes_by_parent_update_by_parent_id(note_id, entity_type:, body_entity_id: nil, note_type: nil, params: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param note_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesByParentUpdateByParentIDParams::EntityType] Path param
      #
      # @param body_entity_id [Integer] Body param
      #
      # @param note_type [String] Body param
      #
      # @param params [Object] Body param
      #
      # @param updated_at [Integer] Body param
      #
      # @param updated_by [Integer] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse, Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesByParentUpdateByParentIDParams
      def entity_notes_by_parent_update_by_parent_id(note_id, params)
        parsed, options = Amocrm::APIEntityNotesByParentUpdateByParentIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        path_entity_id =
          parsed.delete(:path_entity_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/%2$s/notes/%3$s", entity_type, path_entity_id, note_id],
          body: parsed,
          model: Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse,
          options: options
        )
      end

      # Create notes for entity type.
      #
      # @overload entity_notes_create(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesCreateParams::EntityType]
      # @param body [Array<Amocrm::Models::APIEntityNotesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesCreateResponse::NoteCreateResponse, Amocrm::Models::APIEntityNotesCreateResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesCreateParams
      def entity_notes_create(entity_type, params)
        parsed, options = Amocrm::APIEntityNotesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityNotesCreateResponse,
          options: options
        )
      end

      # Get note by id.
      #
      # @overload entity_notes_get_by_id(id, entity_type:, with: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesGetByIDParams::EntityType] Path param
      #
      # @param with [String] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesGetByIDResponse::Note, Amocrm::Models::APIEntityNotesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesGetByIDParams
      def entity_notes_get_by_id(id, params)
        parsed, options = Amocrm::APIEntityNotesGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/notes/%2$s", entity_type, id],
          query: parsed,
          model: Amocrm::Models::APIEntityNotesGetByIDResponse,
          options: options
        )
      end

      # Get notes list for entity type.
      #
      # @overload entity_notes_list(entity_type, filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesListParams::EntityType]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesListResponse::NoteListResponse, Amocrm::Models::APIEntityNotesListResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesListParams
      def entity_notes_list(entity_type, params = {})
        parsed, options = Amocrm::APIEntityNotesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/notes", entity_type],
          query: parsed,
          model: Amocrm::Models::APIEntityNotesListResponse,
          options: options
        )
      end

      # Pin note by id.
      #
      # @overload entity_notes_pin(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesPinParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesPinResponse::EmptyResponse, Amocrm::Models::APIEntityNotesPinResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesPinParams
      def entity_notes_pin(id, params)
        parsed, options = Amocrm::APIEntityNotesPinParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes/%2$s/pin", entity_type, id],
          model: Amocrm::Models::APIEntityNotesPinResponse,
          options: options
        )
      end

      # Unpin note by id.
      #
      # @overload entity_notes_unpin(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesUnpinParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesUnpinResponse::EmptyResponse, Amocrm::Models::APIEntityNotesUnpinResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesUnpinParams
      def entity_notes_unpin(id, params)
        parsed, options = Amocrm::APIEntityNotesUnpinParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes/%2$s/unpin", entity_type, id],
          model: Amocrm::Models::APIEntityNotesUnpinResponse,
          options: options
        )
      end

      # Update notes for entity type (batch).
      #
      # @overload entity_notes_update(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesUpdateParams::EntityType]
      # @param body [Array<Amocrm::Models::APIEntityNotesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesUpdateResponse::NoteCreateResponse, Amocrm::Models::APIEntityNotesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesUpdateParams
      def entity_notes_update(entity_type, params)
        parsed, options = Amocrm::APIEntityNotesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/notes", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::APIEntityNotesUpdateResponse,
          options: options
        )
      end

      # Update note by id.
      #
      # @overload entity_notes_update_by_id(id, entity_type:, entity_id: nil, note_type: nil, params: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::APIEntityNotesUpdateByIDParams::EntityType] Path param
      #
      # @param entity_id [Integer] Body param
      #
      # @param note_type [String] Body param
      #
      # @param params [Object] Body param
      #
      # @param updated_at [Integer] Body param
      #
      # @param updated_by [Integer] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEntityNotesUpdateByIDResponse::NoteCreateResponse, Amocrm::Models::APIEntityNotesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIEntityNotesUpdateByIDParams
      def entity_notes_update_by_id(id, params)
        parsed, options = Amocrm::APIEntityNotesUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/notes/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::APIEntityNotesUpdateByIDResponse,
          options: options
        )
      end

      # Get event by id.
      #
      # @overload events_get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEventsGetByIDResponse::Event, Amocrm::Models::APIEventsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIEventsGetByIDParams
      def events_get_by_id(id, params = {})
        parsed, options = Amocrm::APIEventsGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/events/%1$s", id],
          query: parsed,
          model: Amocrm::Models::APIEventsGetByIDResponse,
          options: options
        )
      end

      # Get events list.
      #
      # @overload events_list(filter: nil, limit: nil, page: nil, with: nil, request_options: {})
      #
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEventsListResponse::EventListResponse, Amocrm::Models::APIEventsListResponse::Problem]
      #
      # @see Amocrm::Models::APIEventsListParams
      def events_list(params = {})
        parsed, options = Amocrm::APIEventsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/events",
          query: parsed,
          model: Amocrm::Models::APIEventsListResponse,
          options: options
        )
      end

      # Get event types.
      #
      # @overload events_list_types(language_code: nil, request_options: {})
      #
      # @param language_code [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse, Amocrm::Models::APIEventsListTypesResponse::Problem]
      #
      # @see Amocrm::Models::APIEventsListTypesParams
      def events_list_types(params = {})
        parsed, options = Amocrm::APIEventsListTypesParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/events/types",
          query: parsed,
          model: Amocrm::Models::APIEventsListTypesResponse,
          options: options
        )
      end

      # Create leads.
      #
      # @overload leads_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APILeadsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APILeadsCreateResponse::LeadCreateResponse, Amocrm::Models::APILeadsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APILeadsCreateParams
      def leads_create(params)
        parsed, options = Amocrm::APILeadsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads",
          body: parsed[:body],
          model: Amocrm::Models::APILeadsCreateResponse,
          options: options
        )
      end

      # Create leads using the complex method (supports unsorted metadata).
      #
      # @overload leads_create_complex(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APILeadsCreateComplexParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse, Amocrm::Models::APILeadsCreateComplexResponse::Problem]
      #
      # @see Amocrm::Models::APILeadsCreateComplexParams
      def leads_create_complex(params)
        parsed, options = Amocrm::APILeadsCreateComplexParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/complex",
          body: parsed[:body],
          model: Amocrm::Models::APILeadsCreateComplexResponse,
          options: options
        )
      end

      # Get a lead by id.
      #
      # @overload leads_get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APILeadsGetByIDResponse::Lead, Amocrm::Models::APILeadsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APILeadsGetByIDParams
      def leads_get_by_id(id, params = {})
        parsed, options = Amocrm::APILeadsGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/leads/%1$s", id],
          query: parsed,
          model: Amocrm::Models::APILeadsGetByIDResponse,
          options: options
        )
      end

      # Get a list of leads (pagination, sorting, filtering).
      #
      # @overload leads_list(filter: nil, limit: nil, order: nil, page: nil, query: nil, with: nil, request_options: {})
      #
      # @param filter [Object] Filtering parameters, see filters API
      #
      # @param limit [Integer] Pagination limit
      #
      # @param order [Object] Sorting, e.g. order[updated_at]=asc
      #
      # @param page [Integer] Pagination page
      #
      # @param query [String, Integer] Search by query string or id
      #
      # @param with [String] Expand related entities; comma-separated values
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APILeadsListResponse::LeadListResponse, Amocrm::Models::APILeadsListResponse::Problem]
      #
      # @see Amocrm::Models::APILeadsListParams
      def leads_list(params = {})
        parsed, options = Amocrm::APILeadsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/leads",
          query: parsed,
          model: Amocrm::Models::APILeadsListResponse,
          options: options
        )
      end

      # Update leads (batch).
      #
      # @overload leads_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APILeadsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APILeadsUpdateResponse::LeadUpdateResponse, Amocrm::Models::APILeadsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APILeadsUpdateParams
      def leads_update(params)
        parsed, options = Amocrm::APILeadsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/leads",
          body: parsed[:body],
          model: Amocrm::Models::APILeadsUpdateResponse,
          options: options
        )
      end

      # Update a lead by id.
      #
      # @overload leads_update_by_id(id, _embedded: nil, closed_at: nil, custom_fields_values: nil, group_id: nil, loss_reason_id: nil, name: nil, pipeline_id: nil, price: nil, responsible_user_id: nil, status_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::APILeadsUpdateByIDParams::Embedded]
      #
      # @param closed_at [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::APILeadsUpdateByIDParams::CustomFieldsValue>] Custom fields payload
      #
      # @param group_id [Integer]
      #
      # @param loss_reason_id [Integer]
      #
      # @param name [String]
      #
      # @param pipeline_id [Integer]
      #
      # @param price [Integer]
      #
      # @param responsible_user_id [Integer]
      #
      # @param status_id [Integer]
      #
      # @param tags_to_add [Array<Amocrm::Models::APILeadsUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::APILeadsUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse, Amocrm::Models::APILeadsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APILeadsUpdateByIDParams
      def leads_update_by_id(id, params = {})
        parsed, options = Amocrm::APILeadsUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APILeadsUpdateByIDResponse,
          options: options
        )
      end

      # Create statuses.
      #
      # @overload pipeline_statuses_create(pipeline_id, body:, request_options: {})
      #
      # @param pipeline_id [Integer]
      # @param body [Array<Amocrm::Models::APIPipelineStatusesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse, Amocrm::Models::APIPipelineStatusesCreateResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelineStatusesCreateParams
      def pipeline_statuses_create(pipeline_id, params)
        parsed, options = Amocrm::APIPipelineStatusesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          body: parsed[:body],
          model: Amocrm::Models::APIPipelineStatusesCreateResponse,
          options: options
        )
      end

      # Delete status by id.
      #
      # @overload pipeline_statuses_delete_by_id(id, pipeline_id:, request_options: {})
      #
      # @param id [Integer]
      # @param pipeline_id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelineStatusesDeleteByIDResponse::EmptyResponse, Amocrm::Models::APIPipelineStatusesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelineStatusesDeleteByIDParams
      def pipeline_statuses_delete_by_id(id, params)
        parsed, options = Amocrm::APIPipelineStatusesDeleteByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          model: Amocrm::Models::APIPipelineStatusesDeleteByIDResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Amocrm::Models::APIPipelineStatusesGetByIDParams} for more details.
      #
      # Get status by id.
      #
      # @overload pipeline_statuses_get_by_id(id, pipeline_id:, with: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param pipeline_id [Integer] Path param
      #
      # @param with [String] Query param: Expand related entities; comma-separated values (e.g. descriptions)
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelineStatusesGetByIDResponse::Status, Amocrm::Models::APIPipelineStatusesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelineStatusesGetByIDParams
      def pipeline_statuses_get_by_id(id, params)
        parsed, options = Amocrm::APIPipelineStatusesGetByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          query: parsed,
          model: Amocrm::Models::APIPipelineStatusesGetByIDResponse,
          options: options
        )
      end

      # Get statuses for a pipeline.
      #
      # @overload pipeline_statuses_list(pipeline_id, with: nil, request_options: {})
      #
      # @param pipeline_id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values (e.g. descriptions).
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelineStatusesListResponse::StatusListResponse, Amocrm::Models::APIPipelineStatusesListResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelineStatusesListParams
      def pipeline_statuses_list(pipeline_id, params = {})
        parsed, options = Amocrm::APIPipelineStatusesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          query: parsed,
          model: Amocrm::Models::APIPipelineStatusesListResponse,
          options: options
        )
      end

      # Update statuses (batch).
      #
      # @overload pipeline_statuses_update(pipeline_id, body:, request_options: {})
      #
      # @param pipeline_id [Integer]
      # @param body [Array<Amocrm::Models::APIPipelineStatusesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelineStatusesUpdateResponse::StatusUpdateResponse, Amocrm::Models::APIPipelineStatusesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelineStatusesUpdateParams
      def pipeline_statuses_update(pipeline_id, params)
        parsed, options = Amocrm::APIPipelineStatusesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          body: parsed[:body],
          model: Amocrm::Models::APIPipelineStatusesUpdateResponse,
          options: options
        )
      end

      # Update status by id.
      #
      # @overload pipeline_statuses_update_by_id(id, pipeline_id:, color: nil, descriptions: nil, name: nil, request_id: nil, sort: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param pipeline_id [Integer] Path param
      #
      # @param color [String] Body param
      #
      # @param descriptions [Array<Amocrm::Models::APIPipelineStatusesUpdateByIDParams::Description>] Body param
      #
      # @param name [String] Body param
      #
      # @param request_id [String] Body param
      #
      # @param sort [Integer] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelineStatusesUpdateByIDResponse::StatusUpdateResponse, Amocrm::Models::APIPipelineStatusesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelineStatusesUpdateByIDParams
      def pipeline_statuses_update_by_id(id, params)
        parsed, options = Amocrm::APIPipelineStatusesUpdateByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          body: parsed,
          model: Amocrm::Models::APIPipelineStatusesUpdateByIDResponse,
          options: options
        )
      end

      # Create pipelines.
      #
      # @overload pipelines_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APIPipelinesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse, Amocrm::Models::APIPipelinesCreateResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelinesCreateParams
      def pipelines_create(params)
        parsed, options = Amocrm::APIPipelinesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/pipelines",
          body: parsed[:body],
          model: Amocrm::Models::APIPipelinesCreateResponse,
          options: options
        )
      end

      # Delete pipeline by id.
      #
      # @overload pipelines_delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelinesDeleteByIDResponse::EmptyResponse, Amocrm::Models::APIPipelinesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelinesDeleteByIDParams
      def pipelines_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/leads/pipelines/%1$s", id],
          model: Amocrm::Models::APIPipelinesDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get pipeline by id.
      #
      # @overload pipelines_get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelinesGetByIDResponse::Pipeline, Amocrm::Models::APIPipelinesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelinesGetByIDParams
      def pipelines_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s", id],
          model: Amocrm::Models::APIPipelinesGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get pipelines list.
      #
      # @overload pipelines_list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelinesListResponse::PipelineListResponse, Amocrm::Models::APIPipelinesListResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelinesListParams
      def pipelines_list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/leads/pipelines",
          model: Amocrm::Models::APIPipelinesListResponse,
          options: params[:request_options]
        )
      end

      # Update pipelines (batch).
      #
      # @overload pipelines_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APIPipelinesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelinesUpdateResponse::PipelineUpdateResponse, Amocrm::Models::APIPipelinesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelinesUpdateParams
      def pipelines_update(params)
        parsed, options = Amocrm::APIPipelinesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/leads/pipelines",
          body: parsed[:body],
          model: Amocrm::Models::APIPipelinesUpdateResponse,
          options: options
        )
      end

      # Update pipeline by id.
      #
      # @overload pipelines_update_by_id(id, is_archive: nil, is_main: nil, is_unsorted_on: nil, name: nil, request_id: nil, sort: nil, request_options: {})
      #
      # @param id [Integer]
      # @param is_archive [Boolean]
      # @param is_main [Boolean]
      # @param is_unsorted_on [Boolean]
      # @param name [String]
      # @param request_id [String]
      # @param sort [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse, Amocrm::Models::APIPipelinesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIPipelinesUpdateByIDParams
      def pipelines_update_by_id(id, params = {})
        parsed, options = Amocrm::APIPipelinesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APIPipelinesUpdateByIDResponse,
          options: options
        )
      end

      # Create roles (batch).
      #
      # @overload roles_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APIRolesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIRolesCreateResponse::RoleCreateResponse, Amocrm::Models::APIRolesCreateResponse::Problem]
      #
      # @see Amocrm::Models::APIRolesCreateParams
      def roles_create(params)
        parsed, options = Amocrm::APIRolesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/roles",
          body: parsed[:body],
          model: Amocrm::Models::APIRolesCreateResponse,
          options: options
        )
      end

      # Delete role by id.
      #
      # @overload roles_delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIRolesDeleteByIDResponse::EmptyResponse, Amocrm::Models::APIRolesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIRolesDeleteByIDParams
      def roles_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/roles/%1$s", id],
          model: Amocrm::Models::APIRolesDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get role by id.
      #
      # @overload roles_get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIRolesGetByIDResponse::Role, Amocrm::Models::APIRolesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIRolesGetByIDParams
      def roles_get_by_id(id, params = {})
        parsed, options = Amocrm::APIRolesGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/roles/%1$s", id],
          query: parsed,
          model: Amocrm::Models::APIRolesGetByIDResponse,
          options: options
        )
      end

      # Get roles list.
      #
      # @overload roles_list(limit: nil, page: nil, with: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIRolesListResponse::RoleListResponse, Amocrm::Models::APIRolesListResponse::Problem]
      #
      # @see Amocrm::Models::APIRolesListParams
      def roles_list(params = {})
        parsed, options = Amocrm::APIRolesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/roles",
          query: parsed,
          model: Amocrm::Models::APIRolesListResponse,
          options: options
        )
      end

      # Update role by id.
      #
      # @overload roles_update_by_id(id, name: nil, request_id: nil, rights: nil, request_options: {})
      #
      # @param id [Integer]
      # @param name [String]
      # @param request_id [String]
      # @param rights [Amocrm::Models::APIRolesUpdateByIDParams::Rights, nil]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIRolesUpdateByIDResponse::Role, Amocrm::Models::APIRolesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIRolesUpdateByIDParams
      def roles_update_by_id(id, params = {})
        parsed, options = Amocrm::APIRolesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/roles/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APIRolesUpdateByIDResponse,
          options: options
        )
      end

      # Run salesbot (batch, up to 100 tasks).
      #
      # @overload salesbot_run(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APISalesbotRunParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse, Amocrm::Models::APISalesbotRunResponse::Problem]
      #
      # @see Amocrm::Models::APISalesbotRunParams
      def salesbot_run(params)
        parsed, options = Amocrm::APISalesbotRunParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v2/salesbot/run",
          body: parsed[:body],
          model: Amocrm::Models::APISalesbotRunResponse,
          options: options
        )
      end

      # Create short link.
      #
      # @overload short_links_create(url:, request_options: {})
      #
      # @param url [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIShortLinksCreateResponse::ShortLinkCreateResponse, Amocrm::Models::APIShortLinksCreateResponse::Problem]
      #
      # @see Amocrm::Models::APIShortLinksCreateParams
      def short_links_create(params)
        parsed, options = Amocrm::APIShortLinksCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/short_links",
          body: parsed,
          model: Amocrm::Models::APIShortLinksCreateResponse,
          options: options
        )
      end

      # Create sources (batch).
      #
      # @overload sources_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APISourcesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APISourcesCreateResponse::SourceCreateResponse, Amocrm::Models::APISourcesCreateResponse::Problem]
      #
      # @see Amocrm::Models::APISourcesCreateParams
      def sources_create(params)
        parsed, options = Amocrm::APISourcesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::APISourcesCreateResponse,
          options: options
        )
      end

      # Delete sources (batch).
      #
      # @overload sources_delete(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APISourcesDeleteParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APISourcesDeleteResponse::EmptyResponse, Amocrm::Models::APISourcesDeleteResponse::Problem]
      #
      # @see Amocrm::Models::APISourcesDeleteParams
      def sources_delete(params)
        parsed, options = Amocrm::APISourcesDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::APISourcesDeleteResponse,
          options: options
        )
      end

      # Delete source by id.
      #
      # @overload sources_delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APISourcesDeleteByIDResponse::EmptyResponse, Amocrm::Models::APISourcesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::APISourcesDeleteByIDParams
      def sources_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/sources/%1$s", id],
          model: Amocrm::Models::APISourcesDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get source by id.
      #
      # @overload sources_get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APISourcesGetByIDResponse::Source, Amocrm::Models::APISourcesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APISourcesGetByIDParams
      def sources_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/sources/%1$s", id],
          model: Amocrm::Models::APISourcesGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get sources list.
      #
      # @overload sources_list(filter: nil, request_options: {})
      #
      # @param filter [Amocrm::Models::APISourcesListParams::Filter]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APISourcesListResponse::SourceListResponse, Amocrm::Models::APISourcesListResponse::Problem]
      #
      # @see Amocrm::Models::APISourcesListParams
      def sources_list(params = {})
        parsed, options = Amocrm::APISourcesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/sources",
          query: parsed,
          model: Amocrm::Models::APISourcesListResponse,
          options: options
        )
      end

      # Update sources (batch).
      #
      # @overload sources_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APISourcesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APISourcesUpdateResponse::SourceUpdateResponse, Amocrm::Models::APISourcesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APISourcesUpdateParams
      def sources_update(params)
        parsed, options = Amocrm::APISourcesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::APISourcesUpdateResponse,
          options: options
        )
      end

      # Update source by id.
      #
      # @overload sources_update_by_id(id, default: nil, external_id: nil, name: nil, origin_code: nil, pipeline_id: nil, request_id: nil, services: nil, request_options: {})
      #
      # @param id [Integer]
      # @param default [Boolean]
      # @param external_id [String]
      # @param name [String]
      # @param origin_code [String, nil]
      # @param pipeline_id [Integer, nil]
      # @param request_id [String]
      # @param services [Array<Object>, Array<String>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APISourcesUpdateByIDResponse::SourceUpdateResponse, Amocrm::Models::APISourcesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APISourcesUpdateByIDParams
      def sources_update_by_id(id, params = {})
        parsed, options = Amocrm::APISourcesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/sources/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APISourcesUpdateByIDResponse,
          options: options
        )
      end

      # Create tags.
      #
      # @overload tags_create(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::APITagsCreateParams::EntityType]
      # @param body [Array<Amocrm::Models::APITagsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITagsCreateResponse::TagCreateResponse, Amocrm::Models::APITagsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APITagsCreateParams
      def tags_create(entity_type, params)
        parsed, options = Amocrm::APITagsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/tags", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::APITagsCreateResponse,
          options: options
        )
      end

      # Get tags list.
      #
      # @overload tags_list(entity_type, filter: nil, limit: nil, page: nil, query: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::APITagsListParams::EntityType]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param query [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITagsListResponse::TagListResponse, Amocrm::Models::APITagsListResponse::Problem]
      #
      # @see Amocrm::Models::APITagsListParams
      def tags_list(entity_type, params = {})
        parsed, options = Amocrm::APITagsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/tags", entity_type],
          query: parsed,
          model: Amocrm::Models::APITagsListResponse,
          options: options
        )
      end

      # Close talk by id (optionally force without NPS bot).
      #
      # @overload talks_close(id, force_close: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param force_close [Boolean] Force close talk without NPS bot.
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITalksCloseResponse::EmptyResponse, Amocrm::Models::APITalksCloseResponse::Problem]
      #
      # @see Amocrm::Models::APITalksCloseParams
      def talks_close(id, params = {})
        parsed, options = Amocrm::APITalksCloseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/talks/%1$s/close", id],
          body: parsed,
          model: Amocrm::Models::APITalksCloseResponse,
          options: options
        )
      end

      # Get talk by id.
      #
      # @overload talks_get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITalksGetByIDResponse::Talk, Amocrm::Models::APITalksGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APITalksGetByIDParams
      def talks_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/talks/%1$s", id],
          model: Amocrm::Models::APITalksGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Create tasks.
      #
      # @overload tasks_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APITasksCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITasksCreateResponse::TaskCreateResponse, Amocrm::Models::APITasksCreateResponse::Problem]
      #
      # @see Amocrm::Models::APITasksCreateParams
      def tasks_create(params)
        parsed, options = Amocrm::APITasksCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/tasks",
          body: parsed[:body],
          model: Amocrm::Models::APITasksCreateResponse,
          options: options
        )
      end

      # Get a task by id.
      #
      # @overload tasks_get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITasksGetByIDResponse::Task, Amocrm::Models::APITasksGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APITasksGetByIDParams
      def tasks_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/tasks/%1$s", id],
          model: Amocrm::Models::APITasksGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get a list of tasks (pagination, sorting, filtering).
      #
      # @overload tasks_list(filter: nil, limit: nil, order: nil, page: nil, query: nil, request_options: {})
      #
      # @param filter [Object] Filtering parameters
      #
      # @param limit [Integer] Pagination limit
      #
      # @param order [Object] Sorting, e.g. order[updated_at]=asc
      #
      # @param page [Integer] Pagination page
      #
      # @param query [String, Integer] Search by query string or id
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITasksListResponse::TaskListResponse, Amocrm::Models::APITasksListResponse::Problem]
      #
      # @see Amocrm::Models::APITasksListParams
      def tasks_list(params = {})
        parsed, options = Amocrm::APITasksListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/tasks",
          query: parsed,
          model: Amocrm::Models::APITasksListResponse,
          options: options
        )
      end

      # Update tasks (batch).
      #
      # @overload tasks_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APITasksUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITasksUpdateResponse::TaskUpdateResponse, Amocrm::Models::APITasksUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APITasksUpdateParams
      def tasks_update(params)
        parsed, options = Amocrm::APITasksUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/tasks",
          body: parsed[:body],
          model: Amocrm::Models::APITasksUpdateResponse,
          options: options
        )
      end

      # Update a task by id.
      #
      # @overload tasks_update_by_id(id, complete_till: nil, entity_id: nil, entity_type: nil, is_completed: nil, responsible_user_id: nil, result: nil, task_type_id: nil, text: nil, request_options: {})
      #
      # @param id [Integer]
      # @param complete_till [Integer]
      # @param entity_id [Integer]
      # @param entity_type [String]
      # @param is_completed [Boolean]
      # @param responsible_user_id [Integer]
      # @param result [Amocrm::Models::APITasksUpdateByIDParams::Result]
      # @param task_type_id [Integer]
      # @param text [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse, Amocrm::Models::APITasksUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::APITasksUpdateByIDParams
      def tasks_update_by_id(id, params = {})
        parsed, options = Amocrm::APITasksUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/tasks/%1$s", id],
          body: parsed,
          model: Amocrm::Models::APITasksUpdateByIDResponse,
          options: options
        )
      end

      # @overload unsorted_leads_accept(uid, status_id: nil, user_id: nil, request_options: {})
      #
      # @param uid [String]
      #
      # @param status_id [Integer] Status id for the created lead
      #
      # @param user_id [Integer] User id on whose behalf the item is accepted
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIUnsortedLeadsAcceptResponse::UnsortedAcceptResponse, Amocrm::Models::APIUnsortedLeadsAcceptResponse::Problem]
      #
      # @see Amocrm::Models::APIUnsortedLeadsAcceptParams
      def unsorted_leads_accept(uid, params = {})
        parsed, options = Amocrm::APIUnsortedLeadsAcceptParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/leads/unsorted/%1$s/accept", uid],
          body: parsed,
          model: Amocrm::Models::APIUnsortedLeadsAcceptResponse,
          options: options
        )
      end

      # @overload unsorted_leads_create_forms(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APIUnsortedLeadsCreateFormsParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse, Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::Problem]
      #
      # @see Amocrm::Models::APIUnsortedLeadsCreateFormsParams
      def unsorted_leads_create_forms(params)
        parsed, options = Amocrm::APIUnsortedLeadsCreateFormsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/unsorted/forms",
          body: parsed[:body],
          model: Amocrm::Models::APIUnsortedLeadsCreateFormsResponse,
          options: options
        )
      end

      # @overload unsorted_leads_decline(uid, user_id: nil, request_options: {})
      #
      # @param uid [String]
      #
      # @param user_id [Integer] User id on whose behalf the item is declined
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIUnsortedLeadsDeclineResponse::UnsortedAcceptResponse, Amocrm::Models::APIUnsortedLeadsDeclineResponse::Problem]
      #
      # @see Amocrm::Models::APIUnsortedLeadsDeclineParams
      def unsorted_leads_decline(uid, params = {})
        parsed, options = Amocrm::APIUnsortedLeadsDeclineParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["api/v4/leads/unsorted/%1$s/decline", uid],
          body: parsed,
          model: Amocrm::Models::APIUnsortedLeadsDeclineResponse,
          options: options
        )
      end

      # Create users (batch).
      #
      # @overload users_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::APIUsersCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIUsersCreateResponse::UserCreateResponse, Amocrm::Models::APIUsersCreateResponse::Problem]
      #
      # @see Amocrm::Models::APIUsersCreateParams
      def users_create(params)
        parsed, options = Amocrm::APIUsersCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/users",
          body: parsed[:body],
          model: Amocrm::Models::APIUsersCreateResponse,
          options: options
        )
      end

      # Get user by id.
      #
      # @overload users_get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIUsersGetByIDResponse::User, Amocrm::Models::APIUsersGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::APIUsersGetByIDParams
      def users_get_by_id(id, params = {})
        parsed, options = Amocrm::APIUsersGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/users/%1$s", id],
          query: parsed,
          model: Amocrm::Models::APIUsersGetByIDResponse,
          options: options
        )
      end

      # Get users list.
      #
      # @overload users_list(limit: nil, page: nil, with: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIUsersListResponse::UserListResponse, Amocrm::Models::APIUsersListResponse::Problem]
      #
      # @see Amocrm::Models::APIUsersListParams
      def users_list(params = {})
        parsed, options = Amocrm::APIUsersListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/users",
          query: parsed,
          model: Amocrm::Models::APIUsersListResponse,
          options: options
        )
      end

      # Get webhooks list.
      #
      # @overload webhooks_list(filter: nil, request_options: {})
      #
      # @param filter [Amocrm::Models::APIWebhooksListParams::Filter]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWebhooksListResponse::WebhookListResponse, Amocrm::Models::APIWebhooksListResponse::Problem]
      #
      # @see Amocrm::Models::APIWebhooksListParams
      def webhooks_list(params = {})
        parsed, options = Amocrm::APIWebhooksListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/webhooks",
          query: parsed,
          model: Amocrm::Models::APIWebhooksListResponse,
          options: options
        )
      end

      # Subscribe to webhook events.
      #
      # @overload webhooks_subscribe(destination:, settings:, sort: nil, request_options: {})
      #
      # @param destination [String]
      # @param settings [Array<String>]
      # @param sort [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWebhooksSubscribeResponse::Webhook, Amocrm::Models::APIWebhooksSubscribeResponse::Problem]
      #
      # @see Amocrm::Models::APIWebhooksSubscribeParams
      def webhooks_subscribe(params)
        parsed, options = Amocrm::APIWebhooksSubscribeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/webhooks",
          body: parsed,
          model: Amocrm::Models::APIWebhooksSubscribeResponse,
          options: options
        )
      end

      # Unsubscribe webhook by destination.
      #
      # @overload webhooks_unsubscribe(destination:, request_options: {})
      #
      # @param destination [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWebhooksUnsubscribeResponse::EmptyResponse, Amocrm::Models::APIWebhooksUnsubscribeResponse::Problem]
      #
      # @see Amocrm::Models::APIWebhooksUnsubscribeParams
      def webhooks_unsubscribe(params)
        parsed, options = Amocrm::APIWebhooksUnsubscribeParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "api/v4/webhooks",
          body: parsed,
          model: Amocrm::Models::APIWebhooksUnsubscribeResponse,
          options: options
        )
      end

      # Connect online chat to CRM Plugin.
      #
      # @overload website_buttons_connect_online_chat(source_id, request_options: {})
      #
      # @param source_id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWebsiteButtonsConnectOnlineChatResponse::EmptyResponse, Amocrm::Models::APIWebsiteButtonsConnectOnlineChatResponse::Problem]
      #
      # @see Amocrm::Models::APIWebsiteButtonsConnectOnlineChatParams
      def website_buttons_connect_online_chat(source_id, params = {})
        @client.request(
          method: :post,
          path: ["api/v4/website_buttons/%1$s/online_chat", source_id],
          model: Amocrm::Models::APIWebsiteButtonsConnectOnlineChatResponse,
          options: params[:request_options]
        )
      end

      # Create CRM Plugin.
      #
      # @overload website_buttons_create(pipeline_id:, is_used_in_app: nil, trusted_websites: nil, request_options: {})
      #
      # @param pipeline_id [Integer]
      # @param is_used_in_app [Boolean]
      # @param trusted_websites [Array<String>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWebsiteButtonsCreateResponse::WebsiteButtonCreateResponse, Amocrm::Models::APIWebsiteButtonsCreateResponse::Problem]
      #
      # @see Amocrm::Models::APIWebsiteButtonsCreateParams
      def website_buttons_create(params)
        parsed, options = Amocrm::APIWebsiteButtonsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/website_buttons",
          body: parsed,
          model: Amocrm::Models::APIWebsiteButtonsCreateResponse,
          options: options
        )
      end

      # Get CRM Plugin by source id.
      #
      # @overload website_buttons_get_by_source_id(source_id, with: nil, request_options: {})
      #
      # @param source_id [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWebsiteButtonsGetBySourceIDResponse::WebsiteButton, Amocrm::Models::APIWebsiteButtonsGetBySourceIDResponse::Problem]
      #
      # @see Amocrm::Models::APIWebsiteButtonsGetBySourceIDParams
      def website_buttons_get_by_source_id(source_id, params = {})
        parsed, options = Amocrm::APIWebsiteButtonsGetBySourceIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/website_buttons/%1$s", source_id],
          query: parsed,
          model: Amocrm::Models::APIWebsiteButtonsGetBySourceIDResponse,
          options: options
        )
      end

      # Get CRM Plugin list.
      #
      # @overload website_buttons_list(limit: nil, page: nil, with: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWebsiteButtonsListResponse::WebsiteButtonListResponse, Amocrm::Models::APIWebsiteButtonsListResponse::Problem]
      #
      # @see Amocrm::Models::APIWebsiteButtonsListParams
      def website_buttons_list(params = {})
        parsed, options = Amocrm::APIWebsiteButtonsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/website_buttons",
          query: parsed,
          model: Amocrm::Models::APIWebsiteButtonsListResponse,
          options: options
        )
      end

      # Update CRM Plugin trusted domains.
      #
      # @overload website_buttons_update(source_id, trusted_websites:, request_options: {})
      #
      # @param source_id [Integer]
      # @param trusted_websites [Amocrm::Models::APIWebsiteButtonsUpdateParams::TrustedWebsites]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWebsiteButtonsUpdateResponse::WebsiteButton, Amocrm::Models::APIWebsiteButtonsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::APIWebsiteButtonsUpdateParams
      def website_buttons_update(source_id, params)
        parsed, options = Amocrm::APIWebsiteButtonsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/website_buttons/%1$s", source_id],
          body: parsed,
          model: Amocrm::Models::APIWebsiteButtonsUpdateResponse,
          options: options
        )
      end

      # @overload widget_bot_continue_continue(continue_id, bot_type:, bot_id:, data: nil, execute_handlers: nil, request_options: {})
      #
      # @param continue_id [Integer] Path param
      #
      # @param bot_type [Symbol, Amocrm::Models::APIWidgetBotContinueContinueParams::BotType] Path param
      #
      # @param bot_id [Integer] Path param
      #
      # @param data [Object] Body param
      #
      # @param execute_handlers [Array<Amocrm::Models::APIWidgetBotContinueContinueParams::ExecuteHandler>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWidgetBotContinueContinueResponse::EmptyResponse, Amocrm::Models::APIWidgetBotContinueContinueResponse::Problem]
      #
      # @see Amocrm::Models::APIWidgetBotContinueContinueParams
      def widget_bot_continue_continue(continue_id, params)
        parsed, options = Amocrm::APIWidgetBotContinueContinueParams.dump_request(params)
        bot_type =
          parsed.delete(:bot_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        bot_id =
          parsed.delete(:bot_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/continue/%3$s", bot_type, bot_id, continue_id],
          body: parsed,
          model: Amocrm::Models::APIWidgetBotContinueContinueResponse,
          options: options
        )
      end

      # Get widget info by code.
      #
      # @overload widgets_get_by_code(widget_code, request_options: {})
      #
      # @param widget_code [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWidgetsGetByCodeResponse::Widget, Amocrm::Models::APIWidgetsGetByCodeResponse::Problem]
      #
      # @see Amocrm::Models::APIWidgetsGetByCodeParams
      def widgets_get_by_code(widget_code, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/widgets/%1$s", widget_code],
          model: Amocrm::Models::APIWidgetsGetByCodeResponse,
          options: params[:request_options]
        )
      end

      # Install widget in account.
      #
      # @overload widgets_install(widget_code, body:, request_options: {})
      #
      # @param widget_code [String]
      # @param body [Object]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWidgetsInstallResponse::Widget, Amocrm::Models::APIWidgetsInstallResponse::Problem]
      #
      # @see Amocrm::Models::APIWidgetsInstallParams
      def widgets_install(widget_code, params)
        parsed, options = Amocrm::APIWidgetsInstallParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/widgets/%1$s", widget_code],
          body: parsed[:body],
          model: Amocrm::Models::APIWidgetsInstallResponse,
          options: options
        )
      end

      # Get widgets list.
      #
      # @overload widgets_list(limit: nil, page: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWidgetsListResponse::WidgetListResponse, Amocrm::Models::APIWidgetsListResponse::Problem]
      #
      # @see Amocrm::Models::APIWidgetsListParams
      def widgets_list(params = {})
        parsed, options = Amocrm::APIWidgetsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/widgets",
          query: parsed,
          model: Amocrm::Models::APIWidgetsListResponse,
          options: options
        )
      end

      # Uninstall widget from account.
      #
      # @overload widgets_uninstall(widget_code, request_options: {})
      #
      # @param widget_code [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::APIWidgetsUninstallResponse::EmptyResponse, Amocrm::Models::APIWidgetsUninstallResponse::Problem]
      #
      # @see Amocrm::Models::APIWidgetsUninstallParams
      def widgets_uninstall(widget_code, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/widgets/%1$s", widget_code],
          model: Amocrm::Models::APIWidgetsUninstallResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Amocrm::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
