# frozen_string_literal: true

module Amocrm
  module Resources
    class V4
      # Get account info.
      #
      # @overload account_get(with: nil, request_options: {})
      #
      # @param with [String] Additional data to include (comma-separated).
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4AccountGetResponse::AccountInfo, Amocrm::Models::V4AccountGetResponse::Problem]
      #
      # @see Amocrm::Models::V4AccountGetParams
      def account_get(params = {})
        parsed, options = Amocrm::V4AccountGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/account",
          query: parsed,
          model: Amocrm::Models::V4AccountGetResponse,
          options: options
        )
      end

      # Add calls (batch).
      #
      # @overload calls_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CallsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CallsCreateResponse::CallCreateResponse, Amocrm::Models::V4CallsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CallsCreateParams
      def calls_create(params)
        parsed, options = Amocrm::V4CallsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/calls",
          body: parsed[:body],
          model: Amocrm::Models::V4CallsCreateResponse,
          options: options
        )
      end

      # Create catalog elements.
      #
      # @overload catalog_elements_create(catalog_id, body:, request_options: {})
      #
      # @param catalog_id [Integer]
      # @param body [Array<Amocrm::Models::V4CatalogElementsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CatalogElementsCreateResponse::CatalogElementCreateResponse, Amocrm::Models::V4CatalogElementsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogElementsCreateParams
      def catalog_elements_create(catalog_id, params)
        parsed, options = Amocrm::V4CatalogElementsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          body: parsed[:body],
          model: Amocrm::Models::V4CatalogElementsCreateResponse,
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
      # @return [Amocrm::Models::V4CatalogElementsGetByIDResponse::CatalogElement, Amocrm::Models::V4CatalogElementsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogElementsGetByIDParams
      def catalog_elements_get_by_id(id, params)
        parsed, options = Amocrm::V4CatalogElementsGetByIDParams.dump_request(params)
        catalog_id =
          parsed.delete(:catalog_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s/elements/%2$s", catalog_id, id],
          query: parsed,
          model: Amocrm::Models::V4CatalogElementsGetByIDResponse,
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
      # @return [Amocrm::Models::V4CatalogElementsListResponse::CatalogElementListResponse, Amocrm::Models::V4CatalogElementsListResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogElementsListParams
      def catalog_elements_list(catalog_id, params = {})
        parsed, options = Amocrm::V4CatalogElementsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          query: parsed,
          model: Amocrm::Models::V4CatalogElementsListResponse,
          options: options
        )
      end

      # Update catalog elements (batch).
      #
      # @overload catalog_elements_update(catalog_id, body:, request_options: {})
      #
      # @param catalog_id [Integer]
      # @param body [Array<Amocrm::Models::V4CatalogElementsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CatalogElementsUpdateResponse::CatalogElementUpdateResponse, Amocrm::Models::V4CatalogElementsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogElementsUpdateParams
      def catalog_elements_update(catalog_id, params)
        parsed, options = Amocrm::V4CatalogElementsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s/elements", catalog_id],
          body: parsed[:body],
          model: Amocrm::Models::V4CatalogElementsUpdateResponse,
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
      # @param custom_fields_values [Array<Amocrm::Models::V4CatalogElementsUpdateByIDParams::CustomFieldsValue>] Body param
      #
      # @param name [String] Body param
      #
      # @param request_id [String] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CatalogElementsUpdateByIDResponse::CatalogElementUpdateResponse, Amocrm::Models::V4CatalogElementsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogElementsUpdateByIDParams
      def catalog_elements_update_by_id(id, params)
        parsed, options = Amocrm::V4CatalogElementsUpdateByIDParams.dump_request(params)
        catalog_id =
          parsed.delete(:catalog_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s/elements/%2$s", catalog_id, id],
          body: parsed,
          model: Amocrm::Models::V4CatalogElementsUpdateByIDResponse,
          options: options
        )
      end

      # Create catalogs.
      #
      # @overload catalogs_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CatalogsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CatalogsCreateResponse::CatalogCreateResponse, Amocrm::Models::V4CatalogsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogsCreateParams
      def catalogs_create(params)
        parsed, options = Amocrm::V4CatalogsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/catalogs",
          body: parsed[:body],
          model: Amocrm::Models::V4CatalogsCreateResponse,
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
      # @return [Amocrm::Models::V4CatalogsGetByIDResponse::Catalog, Amocrm::Models::V4CatalogsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogsGetByIDParams
      def catalogs_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/catalogs/%1$s", id],
          model: Amocrm::Models::V4CatalogsGetByIDResponse,
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
      # @return [Amocrm::Models::V4CatalogsListResponse::CatalogListResponse, Amocrm::Models::V4CatalogsListResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogsListParams
      def catalogs_list(params = {})
        parsed, options = Amocrm::V4CatalogsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/catalogs",
          query: parsed,
          model: Amocrm::Models::V4CatalogsListResponse,
          options: options
        )
      end

      # Update catalogs (batch).
      #
      # @overload catalogs_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CatalogsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CatalogsUpdateResponse::CatalogUpdateResponse, Amocrm::Models::V4CatalogsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogsUpdateParams
      def catalogs_update(params)
        parsed, options = Amocrm::V4CatalogsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/catalogs",
          body: parsed[:body],
          model: Amocrm::Models::V4CatalogsUpdateResponse,
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
      # @return [Amocrm::Models::V4CatalogsUpdateByIDResponse::CatalogUpdateResponse, Amocrm::Models::V4CatalogsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CatalogsUpdateByIDParams
      def catalogs_update_by_id(id, params = {})
        parsed, options = Amocrm::V4CatalogsUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/catalogs/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4CatalogsUpdateByIDResponse,
          options: options
        )
      end

      # Create companies.
      #
      # @overload companies_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CompaniesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CompaniesCreateResponse::CompanyCreateResponse, Amocrm::Models::V4CompaniesCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CompaniesCreateParams
      def companies_create(params)
        parsed, options = Amocrm::V4CompaniesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/companies",
          body: parsed[:body],
          model: Amocrm::Models::V4CompaniesCreateResponse,
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
      # @return [Amocrm::Models::V4CompaniesGetByIDResponse::Company, Amocrm::Models::V4CompaniesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CompaniesGetByIDParams
      def companies_get_by_id(id, params = {})
        parsed, options = Amocrm::V4CompaniesGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/companies/%1$s", id],
          query: parsed,
          model: Amocrm::Models::V4CompaniesGetByIDResponse,
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
      # @return [Amocrm::Models::V4CompaniesListResponse::CompanyListResponse, Amocrm::Models::V4CompaniesListResponse::Problem]
      #
      # @see Amocrm::Models::V4CompaniesListParams
      def companies_list(params = {})
        parsed, options = Amocrm::V4CompaniesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/companies",
          query: parsed,
          model: Amocrm::Models::V4CompaniesListResponse,
          options: options
        )
      end

      # Update companies (batch).
      #
      # @overload companies_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CompaniesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CompaniesUpdateResponse::CompanyUpdateResponse, Amocrm::Models::V4CompaniesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4CompaniesUpdateParams
      def companies_update(params)
        parsed, options = Amocrm::V4CompaniesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/companies",
          body: parsed[:body],
          model: Amocrm::Models::V4CompaniesUpdateResponse,
          options: options
        )
      end

      # Update a company by id.
      #
      # @overload companies_update_by_id(id, _embedded: nil, created_at: nil, created_by: nil, custom_fields_values: nil, name: nil, responsible_user_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::V4CompaniesUpdateByIDParams::Embedded]
      #
      # @param created_at [Integer]
      #
      # @param created_by [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::V4CompaniesUpdateByIDParams::CustomFieldsValue>] Custom fields payload
      #
      # @param name [String]
      #
      # @param responsible_user_id [Integer]
      #
      # @param tags_to_add [Array<Amocrm::Models::V4CompaniesUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::V4CompaniesUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param updated_by [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CompaniesUpdateByIDResponse::CompanyUpdateResponse, Amocrm::Models::V4CompaniesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CompaniesUpdateByIDParams
      def companies_update_by_id(id, params = {})
        parsed, options = Amocrm::V4CompaniesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/companies/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4CompaniesUpdateByIDResponse,
          options: options
        )
      end

      # Link chats to contacts.
      #
      # @overload contact_chats_link(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4ContactChatsLinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4ContactChatsLinkResponse::ContactChatLinksResponse, Amocrm::Models::V4ContactChatsLinkResponse::Problem]
      #
      # @see Amocrm::Models::V4ContactChatsLinkParams
      def contact_chats_link(params)
        parsed, options = Amocrm::V4ContactChatsLinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/contacts/chats",
          body: parsed[:body],
          model: Amocrm::Models::V4ContactChatsLinkResponse,
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
      # @return [Amocrm::Models::V4ContactChatsListResponse::ContactChatLinksResponse, Amocrm::Models::V4ContactChatsListResponse::Problem]
      #
      # @see Amocrm::Models::V4ContactChatsListParams
      def contact_chats_list(params = {})
        parsed, options = Amocrm::V4ContactChatsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/contacts/chats",
          query: parsed,
          model: Amocrm::Models::V4ContactChatsListResponse,
          options: options
        )
      end

      # Create contacts.
      #
      # @overload contacts_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4ContactsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4ContactsCreateResponse::ContactCreateResponse, Amocrm::Models::V4ContactsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4ContactsCreateParams
      def contacts_create(params)
        parsed, options = Amocrm::V4ContactsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/contacts",
          body: parsed[:body],
          model: Amocrm::Models::V4ContactsCreateResponse,
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
      # @return [Amocrm::Models::V4ContactsGetByIDResponse::Contact, Amocrm::Models::V4ContactsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4ContactsGetByIDParams
      def contacts_get_by_id(id, params = {})
        parsed, options = Amocrm::V4ContactsGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/contacts/%1$s", id],
          query: parsed,
          model: Amocrm::Models::V4ContactsGetByIDResponse,
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
      # @return [Amocrm::Models::V4ContactsListResponse::ContactListResponse, Amocrm::Models::V4ContactsListResponse::Problem]
      #
      # @see Amocrm::Models::V4ContactsListParams
      def contacts_list(params = {})
        parsed, options = Amocrm::V4ContactsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/contacts",
          query: parsed,
          model: Amocrm::Models::V4ContactsListResponse,
          options: options
        )
      end

      # Update contacts (batch).
      #
      # @overload contacts_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4ContactsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4ContactsUpdateResponse::ContactUpdateResponse, Amocrm::Models::V4ContactsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4ContactsUpdateParams
      def contacts_update(params)
        parsed, options = Amocrm::V4ContactsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/contacts",
          body: parsed[:body],
          model: Amocrm::Models::V4ContactsUpdateResponse,
          options: options
        )
      end

      # Update a contact by id.
      #
      # @overload contacts_update_by_id(id, _embedded: nil, created_at: nil, created_by: nil, custom_fields_values: nil, first_name: nil, last_name: nil, name: nil, responsible_user_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::V4ContactsUpdateByIDParams::Embedded]
      #
      # @param created_at [Integer]
      #
      # @param created_by [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::V4ContactsUpdateByIDParams::CustomFieldsValue>] Custom fields payload
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param name [String]
      #
      # @param responsible_user_id [Integer]
      #
      # @param tags_to_add [Array<Amocrm::Models::V4ContactsUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::V4ContactsUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param updated_by [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4ContactsUpdateByIDResponse::ContactUpdateResponse, Amocrm::Models::V4ContactsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4ContactsUpdateByIDParams
      def contacts_update_by_id(id, params = {})
        parsed, options = Amocrm::V4ContactsUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/contacts/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4ContactsUpdateByIDResponse,
          options: options
        )
      end

      # Create custom field groups.
      #
      # @overload custom_field_groups_create(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::V4CustomFieldGroupsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse, Amocrm::Models::V4CustomFieldGroupsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldGroupsCreateParams
      def custom_field_groups_create(entity_type, params)
        parsed, options = Amocrm::V4CustomFieldGroupsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/custom_fields/groups", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::V4CustomFieldGroupsCreateResponse,
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
      # @return [Object, Amocrm::Models::V4CustomFieldGroupsDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldGroupsDeleteByIDParams
      def custom_field_groups_delete_by_id(id, params)
        parsed, options = Amocrm::V4CustomFieldGroupsDeleteByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          model: Amocrm::Models::V4CustomFieldGroupsDeleteByIDResponse,
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
      # @return [Amocrm::Models::V4CustomFieldGroupsGetByIDResponse::CustomFieldGroup, Amocrm::Models::V4CustomFieldGroupsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldGroupsGetByIDParams
      def custom_field_groups_get_by_id(id, params)
        parsed, options = Amocrm::V4CustomFieldGroupsGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          model: Amocrm::Models::V4CustomFieldGroupsGetByIDResponse,
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
      # @return [Amocrm::Models::V4CustomFieldGroupsListResponse::CustomFieldGroupListResponse, Amocrm::Models::V4CustomFieldGroupsListResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldGroupsListParams
      def custom_field_groups_list(entity_type, params = {})
        parsed, options = Amocrm::V4CustomFieldGroupsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/groups", entity_type],
          query: parsed,
          model: Amocrm::Models::V4CustomFieldGroupsListResponse,
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
      # @return [Object, Amocrm::Models::V4CustomFieldGroupsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldGroupsUpdateByIDParams
      def custom_field_groups_update_by_id(id, params)
        parsed, options = Amocrm::V4CustomFieldGroupsUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::V4CustomFieldGroupsUpdateByIDResponse,
          options: options
        )
      end

      # Create custom fields.
      #
      # @overload custom_fields_create(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::V4CustomFieldsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomFieldsCreateResponse::CustomFieldCreateResponse, Amocrm::Models::V4CustomFieldsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldsCreateParams
      def custom_fields_create(entity_type, params)
        parsed, options = Amocrm::V4CustomFieldsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::V4CustomFieldsCreateResponse,
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
      # @return [Object, Amocrm::Models::V4CustomFieldsDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldsDeleteByIDParams
      def custom_fields_delete_by_id(id, params)
        parsed, options = Amocrm::V4CustomFieldsDeleteByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          model: Amocrm::Models::V4CustomFieldsDeleteByIDResponse,
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
      # @return [Amocrm::Models::V4CustomFieldsGetByIDResponse::CustomField, Amocrm::Models::V4CustomFieldsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldsGetByIDParams
      def custom_fields_get_by_id(id, params)
        parsed, options = Amocrm::V4CustomFieldsGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          model: Amocrm::Models::V4CustomFieldsGetByIDResponse,
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
      # @return [Amocrm::Models::V4CustomFieldsListResponse::CustomFieldListResponse, Amocrm::Models::V4CustomFieldsListResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldsListParams
      def custom_fields_list(entity_type, params = {})
        parsed, options = Amocrm::V4CustomFieldsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          query: parsed,
          model: Amocrm::Models::V4CustomFieldsListResponse,
          options: options
        )
      end

      # Update custom fields (batch).
      #
      # @overload custom_fields_update(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::V4CustomFieldsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::V4CustomFieldsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldsUpdateParams
      def custom_fields_update(entity_type, params)
        parsed, options = Amocrm::V4CustomFieldsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::V4CustomFieldsUpdateResponse,
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
      # @return [Object, Amocrm::Models::V4CustomFieldsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomFieldsUpdateByIDParams
      def custom_fields_update_by_id(id, params)
        parsed, options = Amocrm::V4CustomFieldsUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::V4CustomFieldsUpdateByIDResponse,
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
      # @return [Amocrm::Models::V4CustomerBonusPointsChangeResponse::CustomerBonusPointsResponse, Amocrm::Models::V4CustomerBonusPointsChangeResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerBonusPointsChangeParams
      def customer_bonus_points_change(customer_id, params)
        parsed, options = Amocrm::V4CustomerBonusPointsChangeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/customers/%1$s/bonus_points", customer_id],
          body: parsed,
          model: Amocrm::Models::V4CustomerBonusPointsChangeResponse,
          options: options
        )
      end

      # Create segments.
      #
      # @overload customer_segments_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CustomerSegmentsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomerSegmentsCreateResponse::CustomerSegmentCreateResponse, Amocrm::Models::V4CustomerSegmentsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerSegmentsCreateParams
      def customer_segments_create(params)
        parsed, options = Amocrm::V4CustomerSegmentsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers/segments",
          body: parsed[:body],
          model: Amocrm::Models::V4CustomerSegmentsCreateResponse,
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
      # @return [Object, Amocrm::Models::V4CustomerSegmentsDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerSegmentsDeleteByIDParams
      def customer_segments_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/customers/segments/%1$s", id],
          model: Amocrm::Models::V4CustomerSegmentsDeleteByIDResponse,
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
      # @return [Amocrm::Models::V4CustomerSegmentsGetByIDResponse::CustomerSegment, Amocrm::Models::V4CustomerSegmentsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerSegmentsGetByIDParams
      def customer_segments_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/customers/segments/%1$s", id],
          model: Amocrm::Models::V4CustomerSegmentsGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get segments list.
      #
      # @overload customer_segments_list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomerSegmentsListResponse::CustomerSegmentListResponse, Amocrm::Models::V4CustomerSegmentsListResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerSegmentsListParams
      def customer_segments_list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/customers/segments",
          model: Amocrm::Models::V4CustomerSegmentsListResponse,
          options: params[:request_options]
        )
      end

      # Update a segment by id.
      #
      # @overload customer_segments_update_by_id(id, color: nil, custom_fields_values: nil, name: nil, request_options: {})
      #
      # @param id [Integer]
      # @param color [String]
      # @param custom_fields_values [Array<Amocrm::Models::V4CustomerSegmentsUpdateByIDParams::CustomFieldsValue>]
      # @param name [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::V4CustomerSegmentsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerSegmentsUpdateByIDParams
      def customer_segments_update_by_id(id, params = {})
        parsed, options = Amocrm::V4CustomerSegmentsUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/segments/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4CustomerSegmentsUpdateByIDResponse,
          options: options
        )
      end

      # Create statuses.
      #
      # @overload customer_statuses_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CustomerStatusesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomerStatusesCreateResponse::CustomerStatusCreateResponse, Amocrm::Models::V4CustomerStatusesCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerStatusesCreateParams
      def customer_statuses_create(params)
        parsed, options = Amocrm::V4CustomerStatusesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers/statuses",
          body: parsed[:body],
          model: Amocrm::Models::V4CustomerStatusesCreateResponse,
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
      # @return [Object, Amocrm::Models::V4CustomerStatusesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerStatusesDeleteByIDParams
      def customer_statuses_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/customers/statuses/%1$s", id],
          model: Amocrm::Models::V4CustomerStatusesDeleteByIDResponse,
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
      # @return [Amocrm::Models::V4CustomerStatusesGetByIDResponse::CustomerStatus, Amocrm::Models::V4CustomerStatusesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerStatusesGetByIDParams
      def customer_statuses_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/customers/statuses/%1$s", id],
          model: Amocrm::Models::V4CustomerStatusesGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get statuses list.
      #
      # @overload customer_statuses_list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomerStatusesListResponse::CustomerStatusListResponse, Amocrm::Models::V4CustomerStatusesListResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerStatusesListParams
      def customer_statuses_list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/customers/statuses",
          model: Amocrm::Models::V4CustomerStatusesListResponse,
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
      # @return [Object, Amocrm::Models::V4CustomerStatusesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerStatusesUpdateByIDParams
      def customer_statuses_update_by_id(id, params = {})
        parsed, options = Amocrm::V4CustomerStatusesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/statuses/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4CustomerStatusesUpdateByIDResponse,
          options: options
        )
      end

      # Create transactions for a customer.
      #
      # @overload customer_transactions_create(customer_id, body:, accrue_bonus: nil, request_options: {})
      #
      # @param customer_id [Integer] Path param
      #
      # @param body [Array<Amocrm::Models::V4CustomerTransactionsCreateParams::Body>] Body param
      #
      # @param accrue_bonus [Boolean] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomerTransactionsCreateResponse::CustomerTransactionCreateResponse, Amocrm::Models::V4CustomerTransactionsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerTransactionsCreateParams
      def customer_transactions_create(customer_id, params)
        parsed, options = Amocrm::V4CustomerTransactionsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/customers/%1$s/transactions", customer_id],
          query: parsed.except(:body),
          body: parsed[:body],
          model: Amocrm::Models::V4CustomerTransactionsCreateResponse,
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
      # @return [Object, Amocrm::Models::V4CustomerTransactionsDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerTransactionsDeleteByIDParams
      def customer_transactions_delete_by_id(transaction_id, params)
        parsed, options = Amocrm::V4CustomerTransactionsDeleteByIDParams.dump_request(params)
        customer_id =
          parsed.delete(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/customers/%1$s/transactions/%2$s", customer_id, transaction_id],
          model: Amocrm::Models::V4CustomerTransactionsDeleteByIDResponse,
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
      # @return [Amocrm::Models::V4CustomerTransactionsListResponse::CustomerTransactionListResponse, Amocrm::Models::V4CustomerTransactionsListResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerTransactionsListParams
      def customer_transactions_list(params = {})
        parsed, options = Amocrm::V4CustomerTransactionsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/customers/transactions",
          query: parsed,
          model: Amocrm::Models::V4CustomerTransactionsListResponse,
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
      # @return [Amocrm::Models::V4CustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse, Amocrm::Models::V4CustomerTransactionsListByCustomerResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomerTransactionsListByCustomerParams
      def customer_transactions_list_by_customer(customer_id, params = {})
        parsed, options = Amocrm::V4CustomerTransactionsListByCustomerParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/customers/%1$s/transactions", customer_id],
          query: parsed,
          model: Amocrm::Models::V4CustomerTransactionsListByCustomerResponse,
          options: options
        )
      end

      # Create customers.
      #
      # @overload customers_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CustomersCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomersCreateResponse::CustomerCreateResponse, Amocrm::Models::V4CustomersCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomersCreateParams
      def customers_create(params)
        parsed, options = Amocrm::V4CustomersCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers",
          body: parsed[:body],
          model: Amocrm::Models::V4CustomersCreateResponse,
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
      # @return [Amocrm::Models::V4CustomersGetByIDResponse::Customer, Amocrm::Models::V4CustomersGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomersGetByIDParams
      def customers_get_by_id(id, params = {})
        parsed, options = Amocrm::V4CustomersGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/customers/%1$s", id],
          query: parsed,
          model: Amocrm::Models::V4CustomersGetByIDResponse,
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
      # @return [Amocrm::Models::V4CustomersListResponse::CustomerListResponse, Amocrm::Models::V4CustomersListResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomersListParams
      def customers_list(params = {})
        parsed, options = Amocrm::V4CustomersListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/customers",
          query: parsed,
          model: Amocrm::Models::V4CustomersListResponse,
          options: options
        )
      end

      # Enable or switch customers mode.
      #
      # @overload customers_mode_set_mode(is_enabled:, mode:, request_options: {})
      #
      # @param is_enabled [Boolean]
      # @param mode [Symbol, Amocrm::Models::V4CustomersModeSetModeParams::Mode]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomersModeSetModeResponse::CustomerModeResponse, Amocrm::Models::V4CustomersModeSetModeResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomersModeSetModeParams
      def customers_mode_set_mode(params)
        parsed, options = Amocrm::V4CustomersModeSetModeParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/customers/mode",
          body: parsed,
          model: Amocrm::Models::V4CustomersModeSetModeResponse,
          options: options
        )
      end

      # Update customers (batch).
      #
      # @overload customers_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4CustomersUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse, Amocrm::Models::V4CustomersUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomersUpdateParams
      def customers_update(params)
        parsed, options = Amocrm::V4CustomersUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/customers",
          body: parsed[:body],
          model: Amocrm::Models::V4CustomersUpdateResponse,
          options: options
        )
      end

      # Update a customer by id.
      #
      # @overload customers_update_by_id(id, _embedded: nil, custom_fields_values: nil, main_user_id: nil, name: nil, next_date: nil, next_price: nil, periodicity: nil, responsible_user_id: nil, status_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer]
      # @param _embedded [Amocrm::Models::V4CustomersUpdateByIDParams::Embedded]
      # @param custom_fields_values [Array<Amocrm::Models::V4CustomersUpdateByIDParams::CustomFieldsValue>]
      # @param main_user_id [Integer]
      # @param name [String]
      # @param next_date [Integer]
      # @param next_price [Integer]
      # @param periodicity [Integer]
      # @param responsible_user_id [Integer]
      # @param status_id [Integer]
      # @param tags_to_add [Array<Amocrm::Models::V4CustomersUpdateByIDParams::TagsToAdd>]
      # @param tags_to_delete [Array<Amocrm::Models::V4CustomersUpdateByIDParams::TagsToDelete>]
      # @param updated_at [Integer]
      # @param updated_by [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4CustomersUpdateByIDResponse::CustomerUpdateResponse, Amocrm::Models::V4CustomersUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4CustomersUpdateByIDParams
      def customers_update_by_id(id, params = {})
        parsed, options = Amocrm::V4CustomersUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4CustomersUpdateByIDResponse,
          options: options
        )
      end

      # Add followers.
      #
      # @overload entity_followers_add(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityFollowersAddParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::V4EntityFollowersAddParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityFollowersAddResponse::EntityFollowerCreateResponse, Amocrm::Models::V4EntityFollowersAddResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityFollowersAddParams
      def entity_followers_add(entity_id, params)
        parsed, options = Amocrm::V4EntityFollowersAddParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityFollowersAddResponse,
          options: options
        )
      end

      # Get followers list.
      #
      # @overload entity_followers_list(entity_id, entity_type:, limit: nil, page: nil, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityFollowersListParams::EntityType] Path param
      #
      # @param limit [Integer] Query param
      #
      # @param page [Integer] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse, Amocrm::Models::V4EntityFollowersListResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityFollowersListParams
      def entity_followers_list(entity_id, params)
        parsed, options = Amocrm::V4EntityFollowersListParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          query: parsed,
          model: Amocrm::Models::V4EntityFollowersListResponse,
          options: options
        )
      end

      # Remove followers.
      #
      # @overload entity_followers_remove(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityFollowersRemoveParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::V4EntityFollowersRemoveParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityFollowersRemoveResponse::EmptyResponse, Amocrm::Models::V4EntityFollowersRemoveResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityFollowersRemoveParams
      def entity_followers_remove(entity_id, params)
        parsed, options = Amocrm::V4EntityFollowersRemoveParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/%2$s/followers", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityFollowersRemoveResponse,
          options: options
        )
      end

      # Link entities (bulk).
      #
      # @overload entity_links_link(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityLinksLinkParams::EntityType]
      # @param body [Array<Amocrm::Models::V4EntityLinksLinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityLinksLinkResponse::EmptyResponse, Amocrm::Models::V4EntityLinksLinkResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityLinksLinkParams
      def entity_links_link(entity_type, params)
        parsed, options = Amocrm::V4EntityLinksLinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/link", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityLinksLinkResponse,
          options: options
        )
      end

      # Link entities for a specific entity.
      #
      # @overload entity_links_link_by_entity(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityLinksLinkByEntityParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::V4EntityLinksLinkByEntityParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityLinksLinkByEntityResponse::EmptyResponse, Amocrm::Models::V4EntityLinksLinkByEntityResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityLinksLinkByEntityParams
      def entity_links_link_by_entity(entity_id, params)
        parsed, options = Amocrm::V4EntityLinksLinkByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/link", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityLinksLinkByEntityResponse,
          options: options
        )
      end

      # Get list of linked entities (bulk).
      #
      # @overload entity_links_list(entity_type, filter: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityLinksListParams::EntityType]
      # @param filter [Object]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityLinksListResponse::EntityLinksResponse, Amocrm::Models::V4EntityLinksListResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityLinksListParams
      def entity_links_list(entity_type, params = {})
        parsed, options = Amocrm::V4EntityLinksListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/links", entity_type],
          query: parsed,
          model: Amocrm::Models::V4EntityLinksListResponse,
          options: options
        )
      end

      # Get links for a specific entity.
      #
      # @overload entity_links_list_by_entity(entity_id, entity_type:, request_options: {})
      #
      # @param entity_id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::V4EntityLinksListByEntityParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityLinksListByEntityResponse::EntityLinksResponse, Amocrm::Models::V4EntityLinksListByEntityResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityLinksListByEntityParams
      def entity_links_list_by_entity(entity_id, params)
        parsed, options = Amocrm::V4EntityLinksListByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/links", entity_type, entity_id],
          model: Amocrm::Models::V4EntityLinksListByEntityResponse,
          options: options
        )
      end

      # Unlink entities (bulk).
      #
      # @overload entity_links_unlink(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityLinksUnlinkParams::EntityType]
      # @param body [Array<Amocrm::Models::V4EntityLinksUnlinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityLinksUnlinkResponse::EmptyResponse, Amocrm::Models::V4EntityLinksUnlinkResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityLinksUnlinkParams
      def entity_links_unlink(entity_type, params)
        parsed, options = Amocrm::V4EntityLinksUnlinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/unlink", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityLinksUnlinkResponse,
          options: options
        )
      end

      # Unlink entities for a specific entity.
      #
      # @overload entity_links_unlink_by_entity(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityLinksUnlinkByEntityParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::V4EntityLinksUnlinkByEntityParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityLinksUnlinkByEntityResponse::EmptyResponse, Amocrm::Models::V4EntityLinksUnlinkByEntityResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityLinksUnlinkByEntityParams
      def entity_links_unlink_by_entity(entity_id, params)
        parsed, options = Amocrm::V4EntityLinksUnlinkByEntityParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/unlink", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityLinksUnlinkByEntityResponse,
          options: options
        )
      end

      # Create notes for a specific entity.
      #
      # @overload entity_notes_by_parent_create_by_parent(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesByParentCreateByParentParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::V4EntityNotesByParentCreateByParentParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesByParentCreateByParentResponse::NoteCreateResponse, Amocrm::Models::V4EntityNotesByParentCreateByParentResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesByParentCreateByParentParams
      def entity_notes_by_parent_create_by_parent(entity_id, params)
        parsed, options = Amocrm::V4EntityNotesByParentCreateByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityNotesByParentCreateByParentResponse,
          options: options
        )
      end

      # Get note by id for a specific entity.
      #
      # @overload entity_notes_by_parent_get_by_parent_id(note_id, entity_type:, entity_id:, with: nil, request_options: {})
      #
      # @param note_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesByParentGetByParentIDParams::EntityType] Path param
      #
      # @param entity_id [Integer] Path param
      #
      # @param with [String] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesByParentGetByParentIDResponse::Note, Amocrm::Models::V4EntityNotesByParentGetByParentIDResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesByParentGetByParentIDParams
      def entity_notes_by_parent_get_by_parent_id(note_id, params)
        parsed, options = Amocrm::V4EntityNotesByParentGetByParentIDParams.dump_request(params)
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
          model: Amocrm::Models::V4EntityNotesByParentGetByParentIDResponse,
          options: options
        )
      end

      # Get notes list for a specific entity.
      #
      # @overload entity_notes_by_parent_list_by_parent(entity_id, entity_type:, filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesByParentListByParentParams::EntityType] Path param
      #
      # @param filter [Object] Query param
      #
      # @param limit [Integer] Query param
      #
      # @param page [Integer] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse, Amocrm::Models::V4EntityNotesByParentListByParentResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesByParentListByParentParams
      def entity_notes_by_parent_list_by_parent(entity_id, params)
        parsed, options = Amocrm::V4EntityNotesByParentListByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          query: parsed,
          model: Amocrm::Models::V4EntityNotesByParentListByParentResponse,
          options: options
        )
      end

      # Update notes for a specific entity (batch).
      #
      # @overload entity_notes_by_parent_update_by_parent(entity_id, entity_type:, body:, request_options: {})
      #
      # @param entity_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesByParentUpdateByParentParams::EntityType] Path param
      #
      # @param body [Array<Amocrm::Models::V4EntityNotesByParentUpdateByParentParams::Body>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesByParentUpdateByParentResponse::NoteCreateResponse, Amocrm::Models::V4EntityNotesByParentUpdateByParentResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesByParentUpdateByParentParams
      def entity_notes_by_parent_update_by_parent(entity_id, params)
        parsed, options = Amocrm::V4EntityNotesByParentUpdateByParentParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/%2$s/notes", entity_type, entity_id],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityNotesByParentUpdateByParentResponse,
          options: options
        )
      end

      # Update note by id for a specific entity.
      #
      # @overload entity_notes_by_parent_update_by_parent_id(note_id, entity_type:, body_entity_id: nil, note_type: nil, params: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param note_id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesByParentUpdateByParentIDParams::EntityType] Path param
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
      # @return [Amocrm::Models::V4EntityNotesByParentUpdateByParentIDResponse::NoteCreateResponse, Amocrm::Models::V4EntityNotesByParentUpdateByParentIDResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesByParentUpdateByParentIDParams
      def entity_notes_by_parent_update_by_parent_id(note_id, params)
        parsed, options = Amocrm::V4EntityNotesByParentUpdateByParentIDParams.dump_request(params)
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
          model: Amocrm::Models::V4EntityNotesByParentUpdateByParentIDResponse,
          options: options
        )
      end

      # Create notes for entity type.
      #
      # @overload entity_notes_create(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesCreateParams::EntityType]
      # @param body [Array<Amocrm::Models::V4EntityNotesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesCreateResponse::NoteCreateResponse, Amocrm::Models::V4EntityNotesCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesCreateParams
      def entity_notes_create(entity_type, params)
        parsed, options = Amocrm::V4EntityNotesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityNotesCreateResponse,
          options: options
        )
      end

      # Get note by id.
      #
      # @overload entity_notes_get_by_id(id, entity_type:, with: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesGetByIDParams::EntityType] Path param
      #
      # @param with [String] Query param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesGetByIDResponse::Note, Amocrm::Models::V4EntityNotesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesGetByIDParams
      def entity_notes_get_by_id(id, params)
        parsed, options = Amocrm::V4EntityNotesGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/notes/%2$s", entity_type, id],
          query: parsed,
          model: Amocrm::Models::V4EntityNotesGetByIDResponse,
          options: options
        )
      end

      # Get notes list for entity type.
      #
      # @overload entity_notes_list(entity_type, filter: nil, limit: nil, page: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesListParams::EntityType]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesListResponse::NoteListResponse, Amocrm::Models::V4EntityNotesListResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesListParams
      def entity_notes_list(entity_type, params = {})
        parsed, options = Amocrm::V4EntityNotesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/notes", entity_type],
          query: parsed,
          model: Amocrm::Models::V4EntityNotesListResponse,
          options: options
        )
      end

      # Pin note by id.
      #
      # @overload entity_notes_pin(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesPinParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesPinResponse::EmptyResponse, Amocrm::Models::V4EntityNotesPinResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesPinParams
      def entity_notes_pin(id, params)
        parsed, options = Amocrm::V4EntityNotesPinParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes/%2$s/pin", entity_type, id],
          model: Amocrm::Models::V4EntityNotesPinResponse,
          options: options
        )
      end

      # Unpin note by id.
      #
      # @overload entity_notes_unpin(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesUnpinParams::EntityType]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesUnpinResponse::EmptyResponse, Amocrm::Models::V4EntityNotesUnpinResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesUnpinParams
      def entity_notes_unpin(id, params)
        parsed, options = Amocrm::V4EntityNotesUnpinParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/notes/%2$s/unpin", entity_type, id],
          model: Amocrm::Models::V4EntityNotesUnpinResponse,
          options: options
        )
      end

      # Update notes for entity type (batch).
      #
      # @overload entity_notes_update(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesUpdateParams::EntityType]
      # @param body [Array<Amocrm::Models::V4EntityNotesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4EntityNotesUpdateResponse::NoteCreateResponse, Amocrm::Models::V4EntityNotesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesUpdateParams
      def entity_notes_update(entity_type, params)
        parsed, options = Amocrm::V4EntityNotesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/notes", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::V4EntityNotesUpdateResponse,
          options: options
        )
      end

      # Update note by id.
      #
      # @overload entity_notes_update_by_id(id, entity_type:, entity_id: nil, note_type: nil, params: nil, updated_at: nil, updated_by: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [Symbol, Amocrm::Models::V4EntityNotesUpdateByIDParams::EntityType] Path param
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
      # @return [Amocrm::Models::V4EntityNotesUpdateByIDResponse::NoteCreateResponse, Amocrm::Models::V4EntityNotesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4EntityNotesUpdateByIDParams
      def entity_notes_update_by_id(id, params)
        parsed, options = Amocrm::V4EntityNotesUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/notes/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::V4EntityNotesUpdateByIDResponse,
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
      # @return [Amocrm::Models::V4EventsGetByIDResponse::Event, Amocrm::Models::V4EventsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4EventsGetByIDParams
      def events_get_by_id(id, params = {})
        parsed, options = Amocrm::V4EventsGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/events/%1$s", id],
          query: parsed,
          model: Amocrm::Models::V4EventsGetByIDResponse,
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
      # @return [Amocrm::Models::V4EventsListResponse::EventListResponse, Amocrm::Models::V4EventsListResponse::Problem]
      #
      # @see Amocrm::Models::V4EventsListParams
      def events_list(params = {})
        parsed, options = Amocrm::V4EventsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/events",
          query: parsed,
          model: Amocrm::Models::V4EventsListResponse,
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
      # @return [Amocrm::Models::V4EventsListTypesResponse::EventTypesResponse, Amocrm::Models::V4EventsListTypesResponse::Problem]
      #
      # @see Amocrm::Models::V4EventsListTypesParams
      def events_list_types(params = {})
        parsed, options = Amocrm::V4EventsListTypesParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/events/types",
          query: parsed,
          model: Amocrm::Models::V4EventsListTypesResponse,
          options: options
        )
      end

      # Create leads.
      #
      # @overload leads_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4LeadsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse, Amocrm::Models::V4LeadsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4LeadsCreateParams
      def leads_create(params)
        parsed, options = Amocrm::V4LeadsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads",
          body: parsed[:body],
          model: Amocrm::Models::V4LeadsCreateResponse,
          options: options
        )
      end

      # Create leads using the complex method (supports unsorted metadata).
      #
      # @overload leads_create_complex(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4LeadsCreateComplexParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4LeadsCreateComplexResponse::LeadComplexCreateResponse, Amocrm::Models::V4LeadsCreateComplexResponse::Problem]
      #
      # @see Amocrm::Models::V4LeadsCreateComplexParams
      def leads_create_complex(params)
        parsed, options = Amocrm::V4LeadsCreateComplexParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/complex",
          body: parsed[:body],
          model: Amocrm::Models::V4LeadsCreateComplexResponse,
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
      # @return [Amocrm::Models::V4LeadsGetByIDResponse::Lead, Amocrm::Models::V4LeadsGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4LeadsGetByIDParams
      def leads_get_by_id(id, params = {})
        parsed, options = Amocrm::V4LeadsGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/leads/%1$s", id],
          query: parsed,
          model: Amocrm::Models::V4LeadsGetByIDResponse,
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
      # @return [Amocrm::Models::V4LeadsListResponse::LeadListResponse, Amocrm::Models::V4LeadsListResponse::Problem]
      #
      # @see Amocrm::Models::V4LeadsListParams
      def leads_list(params = {})
        parsed, options = Amocrm::V4LeadsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/leads",
          query: parsed,
          model: Amocrm::Models::V4LeadsListResponse,
          options: options
        )
      end

      # Update leads (batch).
      #
      # @overload leads_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4LeadsUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4LeadsUpdateResponse::LeadUpdateResponse, Amocrm::Models::V4LeadsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4LeadsUpdateParams
      def leads_update(params)
        parsed, options = Amocrm::V4LeadsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/leads",
          body: parsed[:body],
          model: Amocrm::Models::V4LeadsUpdateResponse,
          options: options
        )
      end

      # Update a lead by id.
      #
      # @overload leads_update_by_id(id, _embedded: nil, closed_at: nil, custom_fields_values: nil, group_id: nil, loss_reason_id: nil, name: nil, pipeline_id: nil, price: nil, responsible_user_id: nil, status_id: nil, tags_to_add: nil, tags_to_delete: nil, updated_at: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param _embedded [Amocrm::Models::V4LeadsUpdateByIDParams::Embedded]
      #
      # @param closed_at [Integer]
      #
      # @param custom_fields_values [Array<Amocrm::Models::V4LeadsUpdateByIDParams::CustomFieldsValue>] Custom fields payload
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
      # @param tags_to_add [Array<Amocrm::Models::V4LeadsUpdateByIDParams::TagsToAdd>] Tags to attach
      #
      # @param tags_to_delete [Array<Amocrm::Models::V4LeadsUpdateByIDParams::TagsToDelete>] Tags to delete
      #
      # @param updated_at [Integer]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse, Amocrm::Models::V4LeadsUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4LeadsUpdateByIDParams
      def leads_update_by_id(id, params = {})
        parsed, options = Amocrm::V4LeadsUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4LeadsUpdateByIDResponse,
          options: options
        )
      end

      # Create statuses.
      #
      # @overload pipeline_statuses_create(pipeline_id, body:, request_options: {})
      #
      # @param pipeline_id [Integer]
      # @param body [Array<Amocrm::Models::V4PipelineStatusesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4PipelineStatusesCreateResponse::StatusCreateResponse, Amocrm::Models::V4PipelineStatusesCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelineStatusesCreateParams
      def pipeline_statuses_create(pipeline_id, params)
        parsed, options = Amocrm::V4PipelineStatusesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          body: parsed[:body],
          model: Amocrm::Models::V4PipelineStatusesCreateResponse,
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
      # @return [Amocrm::Models::V4PipelineStatusesDeleteByIDResponse::EmptyResponse, Amocrm::Models::V4PipelineStatusesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelineStatusesDeleteByIDParams
      def pipeline_statuses_delete_by_id(id, params)
        parsed, options = Amocrm::V4PipelineStatusesDeleteByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          model: Amocrm::Models::V4PipelineStatusesDeleteByIDResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Amocrm::Models::V4PipelineStatusesGetByIDParams} for more details.
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
      # @return [Amocrm::Models::V4PipelineStatusesGetByIDResponse::Status, Amocrm::Models::V4PipelineStatusesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelineStatusesGetByIDParams
      def pipeline_statuses_get_by_id(id, params)
        parsed, options = Amocrm::V4PipelineStatusesGetByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          query: parsed,
          model: Amocrm::Models::V4PipelineStatusesGetByIDResponse,
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
      # @return [Amocrm::Models::V4PipelineStatusesListResponse::StatusListResponse, Amocrm::Models::V4PipelineStatusesListResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelineStatusesListParams
      def pipeline_statuses_list(pipeline_id, params = {})
        parsed, options = Amocrm::V4PipelineStatusesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          query: parsed,
          model: Amocrm::Models::V4PipelineStatusesListResponse,
          options: options
        )
      end

      # Update statuses (batch).
      #
      # @overload pipeline_statuses_update(pipeline_id, body:, request_options: {})
      #
      # @param pipeline_id [Integer]
      # @param body [Array<Amocrm::Models::V4PipelineStatusesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4PipelineStatusesUpdateResponse::StatusUpdateResponse, Amocrm::Models::V4PipelineStatusesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelineStatusesUpdateParams
      def pipeline_statuses_update(pipeline_id, params)
        parsed, options = Amocrm::V4PipelineStatusesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          body: parsed[:body],
          model: Amocrm::Models::V4PipelineStatusesUpdateResponse,
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
      # @param descriptions [Array<Amocrm::Models::V4PipelineStatusesUpdateByIDParams::Description>] Body param
      #
      # @param name [String] Body param
      #
      # @param request_id [String] Body param
      #
      # @param sort [Integer] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4PipelineStatusesUpdateByIDResponse::StatusUpdateResponse, Amocrm::Models::V4PipelineStatusesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelineStatusesUpdateByIDParams
      def pipeline_statuses_update_by_id(id, params)
        parsed, options = Amocrm::V4PipelineStatusesUpdateByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          body: parsed,
          model: Amocrm::Models::V4PipelineStatusesUpdateByIDResponse,
          options: options
        )
      end

      # Create pipelines.
      #
      # @overload pipelines_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4PipelinesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4PipelinesCreateResponse::PipelineCreateResponse, Amocrm::Models::V4PipelinesCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelinesCreateParams
      def pipelines_create(params)
        parsed, options = Amocrm::V4PipelinesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/pipelines",
          body: parsed[:body],
          model: Amocrm::Models::V4PipelinesCreateResponse,
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
      # @return [Amocrm::Models::V4PipelinesDeleteByIDResponse::EmptyResponse, Amocrm::Models::V4PipelinesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelinesDeleteByIDParams
      def pipelines_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/leads/pipelines/%1$s", id],
          model: Amocrm::Models::V4PipelinesDeleteByIDResponse,
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
      # @return [Amocrm::Models::V4PipelinesGetByIDResponse::Pipeline, Amocrm::Models::V4PipelinesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelinesGetByIDParams
      def pipelines_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s", id],
          model: Amocrm::Models::V4PipelinesGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get pipelines list.
      #
      # @overload pipelines_list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4PipelinesListResponse::PipelineListResponse, Amocrm::Models::V4PipelinesListResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelinesListParams
      def pipelines_list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/leads/pipelines",
          model: Amocrm::Models::V4PipelinesListResponse,
          options: params[:request_options]
        )
      end

      # Update pipelines (batch).
      #
      # @overload pipelines_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4PipelinesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse, Amocrm::Models::V4PipelinesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelinesUpdateParams
      def pipelines_update(params)
        parsed, options = Amocrm::V4PipelinesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/leads/pipelines",
          body: parsed[:body],
          model: Amocrm::Models::V4PipelinesUpdateResponse,
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
      # @return [Amocrm::Models::V4PipelinesUpdateByIDResponse::PipelineUpdateResponse, Amocrm::Models::V4PipelinesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4PipelinesUpdateByIDParams
      def pipelines_update_by_id(id, params = {})
        parsed, options = Amocrm::V4PipelinesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4PipelinesUpdateByIDResponse,
          options: options
        )
      end

      # Create roles (batch).
      #
      # @overload roles_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4RolesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4RolesCreateResponse::RoleCreateResponse, Amocrm::Models::V4RolesCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4RolesCreateParams
      def roles_create(params)
        parsed, options = Amocrm::V4RolesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/roles",
          body: parsed[:body],
          model: Amocrm::Models::V4RolesCreateResponse,
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
      # @return [Amocrm::Models::V4RolesDeleteByIDResponse::EmptyResponse, Amocrm::Models::V4RolesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4RolesDeleteByIDParams
      def roles_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/roles/%1$s", id],
          model: Amocrm::Models::V4RolesDeleteByIDResponse,
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
      # @return [Amocrm::Models::V4RolesGetByIDResponse::Role, Amocrm::Models::V4RolesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4RolesGetByIDParams
      def roles_get_by_id(id, params = {})
        parsed, options = Amocrm::V4RolesGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/roles/%1$s", id],
          query: parsed,
          model: Amocrm::Models::V4RolesGetByIDResponse,
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
      # @return [Amocrm::Models::V4RolesListResponse::RoleListResponse, Amocrm::Models::V4RolesListResponse::Problem]
      #
      # @see Amocrm::Models::V4RolesListParams
      def roles_list(params = {})
        parsed, options = Amocrm::V4RolesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/roles",
          query: parsed,
          model: Amocrm::Models::V4RolesListResponse,
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
      # @param rights [Amocrm::Models::V4RolesUpdateByIDParams::Rights, nil]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4RolesUpdateByIDResponse::Role, Amocrm::Models::V4RolesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4RolesUpdateByIDParams
      def roles_update_by_id(id, params = {})
        parsed, options = Amocrm::V4RolesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/roles/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4RolesUpdateByIDResponse,
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
      # @return [Amocrm::Models::V4ShortLinksCreateResponse::ShortLinkCreateResponse, Amocrm::Models::V4ShortLinksCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4ShortLinksCreateParams
      def short_links_create(params)
        parsed, options = Amocrm::V4ShortLinksCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/short_links",
          body: parsed,
          model: Amocrm::Models::V4ShortLinksCreateResponse,
          options: options
        )
      end

      # Create sources (batch).
      #
      # @overload sources_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4SourcesCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4SourcesCreateResponse::SourceCreateResponse, Amocrm::Models::V4SourcesCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4SourcesCreateParams
      def sources_create(params)
        parsed, options = Amocrm::V4SourcesCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::V4SourcesCreateResponse,
          options: options
        )
      end

      # Delete sources (batch).
      #
      # @overload sources_delete(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4SourcesDeleteParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4SourcesDeleteResponse::EmptyResponse, Amocrm::Models::V4SourcesDeleteResponse::Problem]
      #
      # @see Amocrm::Models::V4SourcesDeleteParams
      def sources_delete(params)
        parsed, options = Amocrm::V4SourcesDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::V4SourcesDeleteResponse,
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
      # @return [Amocrm::Models::V4SourcesDeleteByIDResponse::EmptyResponse, Amocrm::Models::V4SourcesDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4SourcesDeleteByIDParams
      def sources_delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/sources/%1$s", id],
          model: Amocrm::Models::V4SourcesDeleteByIDResponse,
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
      # @return [Amocrm::Models::V4SourcesGetByIDResponse::Source, Amocrm::Models::V4SourcesGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4SourcesGetByIDParams
      def sources_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/sources/%1$s", id],
          model: Amocrm::Models::V4SourcesGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Get sources list.
      #
      # @overload sources_list(filter: nil, request_options: {})
      #
      # @param filter [Amocrm::Models::V4SourcesListParams::Filter]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4SourcesListResponse::SourceListResponse, Amocrm::Models::V4SourcesListResponse::Problem]
      #
      # @see Amocrm::Models::V4SourcesListParams
      def sources_list(params = {})
        parsed, options = Amocrm::V4SourcesListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/sources",
          query: parsed,
          model: Amocrm::Models::V4SourcesListResponse,
          options: options
        )
      end

      # Update sources (batch).
      #
      # @overload sources_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4SourcesUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4SourcesUpdateResponse::SourceUpdateResponse, Amocrm::Models::V4SourcesUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4SourcesUpdateParams
      def sources_update(params)
        parsed, options = Amocrm::V4SourcesUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::V4SourcesUpdateResponse,
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
      # @return [Amocrm::Models::V4SourcesUpdateByIDResponse::SourceUpdateResponse, Amocrm::Models::V4SourcesUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4SourcesUpdateByIDParams
      def sources_update_by_id(id, params = {})
        parsed, options = Amocrm::V4SourcesUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/sources/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4SourcesUpdateByIDResponse,
          options: options
        )
      end

      # Create tags.
      #
      # @overload tags_create(entity_type, body:, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::V4TagsCreateParams::EntityType]
      # @param body [Array<Amocrm::Models::V4TagsCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4TagsCreateResponse::TagCreateResponse, Amocrm::Models::V4TagsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4TagsCreateParams
      def tags_create(entity_type, params)
        parsed, options = Amocrm::V4TagsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/tags", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::V4TagsCreateResponse,
          options: options
        )
      end

      # Get tags list.
      #
      # @overload tags_list(entity_type, filter: nil, limit: nil, page: nil, query: nil, request_options: {})
      #
      # @param entity_type [Symbol, Amocrm::Models::V4TagsListParams::EntityType]
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param query [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4TagsListResponse::TagListResponse, Amocrm::Models::V4TagsListResponse::Problem]
      #
      # @see Amocrm::Models::V4TagsListParams
      def tags_list(entity_type, params = {})
        parsed, options = Amocrm::V4TagsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/tags", entity_type],
          query: parsed,
          model: Amocrm::Models::V4TagsListResponse,
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
      # @return [Amocrm::Models::V4TalksCloseResponse::EmptyResponse, Amocrm::Models::V4TalksCloseResponse::Problem]
      #
      # @see Amocrm::Models::V4TalksCloseParams
      def talks_close(id, params = {})
        parsed, options = Amocrm::V4TalksCloseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/talks/%1$s/close", id],
          body: parsed,
          model: Amocrm::Models::V4TalksCloseResponse,
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
      # @return [Amocrm::Models::V4TalksGetByIDResponse::Talk, Amocrm::Models::V4TalksGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4TalksGetByIDParams
      def talks_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/talks/%1$s", id],
          model: Amocrm::Models::V4TalksGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Create tasks.
      #
      # @overload tasks_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4TasksCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4TasksCreateResponse::TaskCreateResponse, Amocrm::Models::V4TasksCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4TasksCreateParams
      def tasks_create(params)
        parsed, options = Amocrm::V4TasksCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/tasks",
          body: parsed[:body],
          model: Amocrm::Models::V4TasksCreateResponse,
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
      # @return [Amocrm::Models::V4TasksGetByIDResponse::Task, Amocrm::Models::V4TasksGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4TasksGetByIDParams
      def tasks_get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/tasks/%1$s", id],
          model: Amocrm::Models::V4TasksGetByIDResponse,
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
      # @return [Amocrm::Models::V4TasksListResponse::TaskListResponse, Amocrm::Models::V4TasksListResponse::Problem]
      #
      # @see Amocrm::Models::V4TasksListParams
      def tasks_list(params = {})
        parsed, options = Amocrm::V4TasksListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/tasks",
          query: parsed,
          model: Amocrm::Models::V4TasksListResponse,
          options: options
        )
      end

      # Update tasks (batch).
      #
      # @overload tasks_update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4TasksUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4TasksUpdateResponse::TaskUpdateResponse, Amocrm::Models::V4TasksUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4TasksUpdateParams
      def tasks_update(params)
        parsed, options = Amocrm::V4TasksUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/tasks",
          body: parsed[:body],
          model: Amocrm::Models::V4TasksUpdateResponse,
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
      # @param result [Amocrm::Models::V4TasksUpdateByIDParams::Result]
      # @param task_type_id [Integer]
      # @param text [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4TasksUpdateByIDResponse::TaskUpdateResponse, Amocrm::Models::V4TasksUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4TasksUpdateByIDParams
      def tasks_update_by_id(id, params = {})
        parsed, options = Amocrm::V4TasksUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/tasks/%1$s", id],
          body: parsed,
          model: Amocrm::Models::V4TasksUpdateByIDResponse,
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
      # @return [Amocrm::Models::V4UnsortedLeadsAcceptResponse::UnsortedAcceptResponse, Amocrm::Models::V4UnsortedLeadsAcceptResponse::Problem]
      #
      # @see Amocrm::Models::V4UnsortedLeadsAcceptParams
      def unsorted_leads_accept(uid, params = {})
        parsed, options = Amocrm::V4UnsortedLeadsAcceptParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/leads/unsorted/%1$s/accept", uid],
          body: parsed,
          model: Amocrm::Models::V4UnsortedLeadsAcceptResponse,
          options: options
        )
      end

      # @overload unsorted_leads_create_forms(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4UnsortedLeadsCreateFormsParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4UnsortedLeadsCreateFormsResponse::UnsortedCreateResponse, Amocrm::Models::V4UnsortedLeadsCreateFormsResponse::Problem]
      #
      # @see Amocrm::Models::V4UnsortedLeadsCreateFormsParams
      def unsorted_leads_create_forms(params)
        parsed, options = Amocrm::V4UnsortedLeadsCreateFormsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/unsorted/forms",
          body: parsed[:body],
          model: Amocrm::Models::V4UnsortedLeadsCreateFormsResponse,
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
      # @return [Amocrm::Models::V4UnsortedLeadsDeclineResponse::UnsortedAcceptResponse, Amocrm::Models::V4UnsortedLeadsDeclineResponse::Problem]
      #
      # @see Amocrm::Models::V4UnsortedLeadsDeclineParams
      def unsorted_leads_decline(uid, params = {})
        parsed, options = Amocrm::V4UnsortedLeadsDeclineParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["api/v4/leads/unsorted/%1$s/decline", uid],
          body: parsed,
          model: Amocrm::Models::V4UnsortedLeadsDeclineResponse,
          options: options
        )
      end

      # Create users (batch).
      #
      # @overload users_create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::V4UsersCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4UsersCreateResponse::UserCreateResponse, Amocrm::Models::V4UsersCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4UsersCreateParams
      def users_create(params)
        parsed, options = Amocrm::V4UsersCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/users",
          body: parsed[:body],
          model: Amocrm::Models::V4UsersCreateResponse,
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
      # @return [Amocrm::Models::V4UsersGetByIDResponse::User, Amocrm::Models::V4UsersGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::V4UsersGetByIDParams
      def users_get_by_id(id, params = {})
        parsed, options = Amocrm::V4UsersGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/users/%1$s", id],
          query: parsed,
          model: Amocrm::Models::V4UsersGetByIDResponse,
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
      # @return [Amocrm::Models::V4UsersListResponse::UserListResponse, Amocrm::Models::V4UsersListResponse::Problem]
      #
      # @see Amocrm::Models::V4UsersListParams
      def users_list(params = {})
        parsed, options = Amocrm::V4UsersListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/users",
          query: parsed,
          model: Amocrm::Models::V4UsersListResponse,
          options: options
        )
      end

      # Get webhooks list.
      #
      # @overload webhooks_list(filter: nil, request_options: {})
      #
      # @param filter [Amocrm::Models::V4WebhooksListParams::Filter]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4WebhooksListResponse::WebhookListResponse, Amocrm::Models::V4WebhooksListResponse::Problem]
      #
      # @see Amocrm::Models::V4WebhooksListParams
      def webhooks_list(params = {})
        parsed, options = Amocrm::V4WebhooksListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/webhooks",
          query: parsed,
          model: Amocrm::Models::V4WebhooksListResponse,
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
      # @return [Amocrm::Models::V4WebhooksSubscribeResponse::Webhook, Amocrm::Models::V4WebhooksSubscribeResponse::Problem]
      #
      # @see Amocrm::Models::V4WebhooksSubscribeParams
      def webhooks_subscribe(params)
        parsed, options = Amocrm::V4WebhooksSubscribeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/webhooks",
          body: parsed,
          model: Amocrm::Models::V4WebhooksSubscribeResponse,
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
      # @return [Amocrm::Models::V4WebhooksUnsubscribeResponse::EmptyResponse, Amocrm::Models::V4WebhooksUnsubscribeResponse::Problem]
      #
      # @see Amocrm::Models::V4WebhooksUnsubscribeParams
      def webhooks_unsubscribe(params)
        parsed, options = Amocrm::V4WebhooksUnsubscribeParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "api/v4/webhooks",
          body: parsed,
          model: Amocrm::Models::V4WebhooksUnsubscribeResponse,
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
      # @return [Amocrm::Models::V4WebsiteButtonsConnectOnlineChatResponse::EmptyResponse, Amocrm::Models::V4WebsiteButtonsConnectOnlineChatResponse::Problem]
      #
      # @see Amocrm::Models::V4WebsiteButtonsConnectOnlineChatParams
      def website_buttons_connect_online_chat(source_id, params = {})
        @client.request(
          method: :post,
          path: ["api/v4/website_buttons/%1$s/online_chat", source_id],
          model: Amocrm::Models::V4WebsiteButtonsConnectOnlineChatResponse,
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
      # @return [Amocrm::Models::V4WebsiteButtonsCreateResponse::WebsiteButtonCreateResponse, Amocrm::Models::V4WebsiteButtonsCreateResponse::Problem]
      #
      # @see Amocrm::Models::V4WebsiteButtonsCreateParams
      def website_buttons_create(params)
        parsed, options = Amocrm::V4WebsiteButtonsCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/website_buttons",
          body: parsed,
          model: Amocrm::Models::V4WebsiteButtonsCreateResponse,
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
      # @return [Amocrm::Models::V4WebsiteButtonsGetBySourceIDResponse::WebsiteButton, Amocrm::Models::V4WebsiteButtonsGetBySourceIDResponse::Problem]
      #
      # @see Amocrm::Models::V4WebsiteButtonsGetBySourceIDParams
      def website_buttons_get_by_source_id(source_id, params = {})
        parsed, options = Amocrm::V4WebsiteButtonsGetBySourceIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/website_buttons/%1$s", source_id],
          query: parsed,
          model: Amocrm::Models::V4WebsiteButtonsGetBySourceIDResponse,
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
      # @return [Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse, Amocrm::Models::V4WebsiteButtonsListResponse::Problem]
      #
      # @see Amocrm::Models::V4WebsiteButtonsListParams
      def website_buttons_list(params = {})
        parsed, options = Amocrm::V4WebsiteButtonsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/website_buttons",
          query: parsed,
          model: Amocrm::Models::V4WebsiteButtonsListResponse,
          options: options
        )
      end

      # Update CRM Plugin trusted domains.
      #
      # @overload website_buttons_update(source_id, trusted_websites:, request_options: {})
      #
      # @param source_id [Integer]
      # @param trusted_websites [Amocrm::Models::V4WebsiteButtonsUpdateParams::TrustedWebsites]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4WebsiteButtonsUpdateResponse::WebsiteButton, Amocrm::Models::V4WebsiteButtonsUpdateResponse::Problem]
      #
      # @see Amocrm::Models::V4WebsiteButtonsUpdateParams
      def website_buttons_update(source_id, params)
        parsed, options = Amocrm::V4WebsiteButtonsUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/website_buttons/%1$s", source_id],
          body: parsed,
          model: Amocrm::Models::V4WebsiteButtonsUpdateResponse,
          options: options
        )
      end

      # @overload widget_bot_continue_continue(continue_id, bot_type:, bot_id:, data: nil, execute_handlers: nil, request_options: {})
      #
      # @param continue_id [Integer] Path param
      #
      # @param bot_type [Symbol, Amocrm::Models::V4WidgetBotContinueContinueParams::BotType] Path param
      #
      # @param bot_id [Integer] Path param
      #
      # @param data [Object] Body param
      #
      # @param execute_handlers [Array<Amocrm::Models::V4WidgetBotContinueContinueParams::ExecuteHandler>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::V4WidgetBotContinueContinueResponse::EmptyResponse, Amocrm::Models::V4WidgetBotContinueContinueResponse::Problem]
      #
      # @see Amocrm::Models::V4WidgetBotContinueContinueParams
      def widget_bot_continue_continue(continue_id, params)
        parsed, options = Amocrm::V4WidgetBotContinueContinueParams.dump_request(params)
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
          model: Amocrm::Models::V4WidgetBotContinueContinueResponse,
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
      # @return [Amocrm::Models::V4WidgetsGetByCodeResponse::Widget, Amocrm::Models::V4WidgetsGetByCodeResponse::Problem]
      #
      # @see Amocrm::Models::V4WidgetsGetByCodeParams
      def widgets_get_by_code(widget_code, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/widgets/%1$s", widget_code],
          model: Amocrm::Models::V4WidgetsGetByCodeResponse,
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
      # @return [Amocrm::Models::V4WidgetsInstallResponse::Widget, Amocrm::Models::V4WidgetsInstallResponse::Problem]
      #
      # @see Amocrm::Models::V4WidgetsInstallParams
      def widgets_install(widget_code, params)
        parsed, options = Amocrm::V4WidgetsInstallParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/widgets/%1$s", widget_code],
          body: parsed[:body],
          model: Amocrm::Models::V4WidgetsInstallResponse,
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
      # @return [Amocrm::Models::V4WidgetsListResponse::WidgetListResponse, Amocrm::Models::V4WidgetsListResponse::Problem]
      #
      # @see Amocrm::Models::V4WidgetsListParams
      def widgets_list(params = {})
        parsed, options = Amocrm::V4WidgetsListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/widgets",
          query: parsed,
          model: Amocrm::Models::V4WidgetsListResponse,
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
      # @return [Amocrm::Models::V4WidgetsUninstallResponse::EmptyResponse, Amocrm::Models::V4WidgetsUninstallResponse::Problem]
      #
      # @see Amocrm::Models::V4WidgetsUninstallParams
      def widgets_uninstall(widget_code, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/widgets/%1$s", widget_code],
          model: Amocrm::Models::V4WidgetsUninstallResponse,
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
