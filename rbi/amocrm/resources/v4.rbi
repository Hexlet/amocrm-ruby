# typed: strong

module Amocrm
  module Resources
    class V4
      # Get account info.
      sig do
        params(
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4AccountGetResponse::Variants)
      end
      def account_get(
        # Additional data to include (comma-separated).
        with: nil,
        request_options: {}
      )
      end

      # Add calls (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4CallsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CallsCreateResponse::Variants)
      end
      def calls_create(body:, request_options: {})
      end

      # Create catalog elements.
      sig do
        params(
          catalog_id: Integer,
          body: T::Array[Amocrm::V4CatalogElementsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogElementsCreateResponse::Variants)
      end
      def catalog_elements_create(catalog_id, body:, request_options: {})
      end

      # Get catalog element by id.
      sig do
        params(
          id: Integer,
          catalog_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogElementsGetByIDResponse::Variants)
      end
      def catalog_elements_get_by_id(
        # Path param
        id,
        # Path param
        catalog_id:,
        # Query param: Additional data to include (comma-separated).
        with: nil,
        request_options: {}
      )
      end

      # Get catalog elements list.
      sig do
        params(
          catalog_id: Integer,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          query: Amocrm::V4CatalogElementsListParams::Query::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogElementsListResponse::Variants)
      end
      def catalog_elements_list(
        catalog_id,
        filter: nil,
        limit: nil,
        page: nil,
        query: nil,
        request_options: {}
      )
      end

      # Update catalog elements (batch).
      sig do
        params(
          catalog_id: Integer,
          body: T::Array[Amocrm::V4CatalogElementsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogElementsUpdateResponse::Variants)
      end
      def catalog_elements_update(catalog_id, body:, request_options: {})
      end

      # Update catalog element by id.
      sig do
        params(
          id: Integer,
          catalog_id: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::V4CatalogElementsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          request_id: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogElementsUpdateByIDResponse::Variants)
      end
      def catalog_elements_update_by_id(
        # Path param
        id,
        # Path param
        catalog_id:,
        # Body param
        custom_fields_values: nil,
        # Body param
        name: nil,
        # Body param
        request_id: nil,
        request_options: {}
      )
      end

      # Create catalogs.
      sig do
        params(
          body: T::Array[Amocrm::V4CatalogsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogsCreateResponse::Variants)
      end
      def catalogs_create(body:, request_options: {})
      end

      # Get catalog by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogsGetByIDResponse::Variants)
      end
      def catalogs_get_by_id(id, request_options: {})
      end

      # Get catalogs list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogsListResponse::Variants)
      end
      def catalogs_list(limit: nil, page: nil, request_options: {})
      end

      # Update catalogs (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4CatalogsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogsUpdateResponse::Variants)
      end
      def catalogs_update(body:, request_options: {})
      end

      # Update catalog by id.
      sig do
        params(
          id: Integer,
          can_add_elements: T::Boolean,
          can_link_multiple: T::Boolean,
          name: String,
          request_id: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CatalogsUpdateByIDResponse::Variants)
      end
      def catalogs_update_by_id(
        id,
        can_add_elements: nil,
        can_link_multiple: nil,
        name: nil,
        request_id: nil,
        sort: nil,
        request_options: {}
      )
      end

      # Create companies.
      sig do
        params(
          body: T::Array[Amocrm::V4CompaniesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CompaniesCreateResponse::Variants)
      end
      def companies_create(body:, request_options: {})
      end

      # Get a company by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CompaniesGetByIDResponse::Variants)
      end
      def companies_get_by_id(
        id,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Get a list of companies (pagination, sorting, filtering).
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::V4CompaniesListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CompaniesListResponse::Variants)
      end
      def companies_list(
        # Filtering parameters
        filter: nil,
        # Pagination limit
        limit: nil,
        # Sorting, e.g. order[updated_at]=asc
        order: nil,
        # Pagination page
        page: nil,
        # Search by query string or id
        query: nil,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Update companies (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4CompaniesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CompaniesUpdateResponse::Variants)
      end
      def companies_update(body:, request_options: {})
      end

      # Update a company by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::V4CompaniesUpdateByIDParams::Embedded::OrHash,
          created_at: Integer,
          created_by: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::V4CompaniesUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          responsible_user_id: Integer,
          tags_to_add:
            T::Array[Amocrm::V4CompaniesUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::V4CompaniesUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CompaniesUpdateByIDResponse::Variants)
      end
      def companies_update_by_id(
        id,
        _embedded: nil,
        created_at: nil,
        created_by: nil,
        # Custom fields payload
        custom_fields_values: nil,
        name: nil,
        responsible_user_id: nil,
        # Tags to attach
        tags_to_add: nil,
        # Tags to delete
        tags_to_delete: nil,
        updated_at: nil,
        updated_by: nil,
        request_options: {}
      )
      end

      # Link chats to contacts.
      sig do
        params(
          body: T::Array[Amocrm::V4ContactChatsLinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4ContactChatsLinkResponse::Variants)
      end
      def contact_chats_link(body:, request_options: {})
      end

      # Get list of linked chats.
      sig do
        params(
          filter: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4ContactChatsListResponse::Variants)
      end
      def contact_chats_list(filter: nil, request_options: {})
      end

      # Create contacts.
      sig do
        params(
          body: T::Array[Amocrm::V4ContactsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4ContactsCreateResponse::Variants)
      end
      def contacts_create(body:, request_options: {})
      end

      # Get a contact by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4ContactsGetByIDResponse::Variants)
      end
      def contacts_get_by_id(
        id,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Get a list of contacts (pagination, sorting, filtering).
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::V4ContactsListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4ContactsListResponse::Variants)
      end
      def contacts_list(
        # Filtering parameters
        filter: nil,
        # Pagination limit
        limit: nil,
        # Sorting, e.g. order[updated_at]=asc
        order: nil,
        # Pagination page
        page: nil,
        # Search by query string or id
        query: nil,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Update contacts (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4ContactsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4ContactsUpdateResponse::Variants)
      end
      def contacts_update(body:, request_options: {})
      end

      # Update a contact by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::V4ContactsUpdateByIDParams::Embedded::OrHash,
          created_at: Integer,
          created_by: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::V4ContactsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          first_name: String,
          last_name: String,
          name: String,
          responsible_user_id: Integer,
          tags_to_add:
            T::Array[Amocrm::V4ContactsUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::V4ContactsUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4ContactsUpdateByIDResponse::Variants)
      end
      def contacts_update_by_id(
        id,
        _embedded: nil,
        created_at: nil,
        created_by: nil,
        # Custom fields payload
        custom_fields_values: nil,
        first_name: nil,
        last_name: nil,
        name: nil,
        responsible_user_id: nil,
        # Tags to attach
        tags_to_add: nil,
        # Tags to delete
        tags_to_delete: nil,
        updated_at: nil,
        updated_by: nil,
        request_options: {}
      )
      end

      # Create custom field groups.
      sig do
        params(
          entity_type: String,
          body: T::Array[Amocrm::V4CustomFieldGroupsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldGroupsCreateResponse::Variants)
      end
      def custom_field_groups_create(entity_type, body:, request_options: {})
      end

      # Delete a custom field group by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomFieldGroupsDeleteByIDResponse::Variants
        )
      end
      def custom_field_groups_delete_by_id(
        id,
        entity_type:,
        request_options: {}
      )
      end

      # Get custom field group by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldGroupsGetByIDResponse::Variants)
      end
      def custom_field_groups_get_by_id(id, entity_type:, request_options: {})
      end

      # Get custom field groups list.
      sig do
        params(
          entity_type: String,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldGroupsListResponse::Variants)
      end
      def custom_field_groups_list(
        entity_type,
        limit: nil,
        page: nil,
        request_options: {}
      )
      end

      # Update a custom field group by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          name: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomFieldGroupsUpdateByIDResponse::Variants
        )
      end
      def custom_field_groups_update_by_id(
        # Path param
        id,
        # Path param
        entity_type:,
        # Body param
        name: nil,
        # Body param
        sort: nil,
        request_options: {}
      )
      end

      # Create custom fields.
      sig do
        params(
          entity_type: String,
          body: T::Array[Amocrm::V4CustomFieldsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldsCreateResponse::Variants)
      end
      def custom_fields_create(entity_type, body:, request_options: {})
      end

      # Delete a custom field by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldsDeleteByIDResponse::Variants)
      end
      def custom_fields_delete_by_id(id, entity_type:, request_options: {})
      end

      # Get custom field by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldsGetByIDResponse::Variants)
      end
      def custom_fields_get_by_id(id, entity_type:, request_options: {})
      end

      # Get custom fields list.
      sig do
        params(
          entity_type: String,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldsListResponse::Variants)
      end
      def custom_fields_list(
        entity_type,
        limit: nil,
        page: nil,
        request_options: {}
      )
      end

      # Update custom fields (batch).
      sig do
        params(
          entity_type: String,
          body: T::Array[Amocrm::V4CustomFieldsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldsUpdateResponse::Variants)
      end
      def custom_fields_update(entity_type, body:, request_options: {})
      end

      # Update a custom field by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          code: String,
          enums: T::Array[T.anything],
          group_id: Integer,
          is_deletable: T::Boolean,
          is_multiple: T::Boolean,
          is_required: T::Boolean,
          is_visible: T::Boolean,
          name: String,
          settings: T.anything,
          sort: Integer,
          type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomFieldsUpdateByIDResponse::Variants)
      end
      def custom_fields_update_by_id(
        # Path param
        id,
        # Path param
        entity_type:,
        # Body param
        code: nil,
        # Body param
        enums: nil,
        # Body param
        group_id: nil,
        # Body param
        is_deletable: nil,
        # Body param
        is_multiple: nil,
        # Body param
        is_required: nil,
        # Body param
        is_visible: nil,
        # Body param
        name: nil,
        # Body param
        settings: nil,
        # Body param
        sort: nil,
        # Body param
        type: nil,
        request_options: {}
      )
      end

      # Earn or redeem bonus points.
      sig do
        params(
          customer_id: Integer,
          earn: Integer,
          redeem: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomerBonusPointsChangeResponse::Variants)
      end
      def customer_bonus_points_change(
        customer_id,
        earn:,
        redeem:,
        request_options: {}
      )
      end

      # Create segments.
      sig do
        params(
          body: T::Array[Amocrm::V4CustomerSegmentsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomerSegmentsCreateResponse::Variants)
      end
      def customer_segments_create(body:, request_options: {})
      end

      # Delete a segment by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomerSegmentsDeleteByIDResponse::Variants
        )
      end
      def customer_segments_delete_by_id(id, request_options: {})
      end

      # Get segment by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomerSegmentsGetByIDResponse::Variants)
      end
      def customer_segments_get_by_id(id, request_options: {})
      end

      # Get segments list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::V4CustomerSegmentsListResponse::Variants
        )
      end
      def customer_segments_list(request_options: {})
      end

      # Update a segment by id.
      sig do
        params(
          id: Integer,
          color: String,
          custom_fields_values:
            T::Array[
              Amocrm::V4CustomerSegmentsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomerSegmentsUpdateByIDResponse::Variants
        )
      end
      def customer_segments_update_by_id(
        id,
        color: nil,
        custom_fields_values: nil,
        name: nil,
        request_options: {}
      )
      end

      # Create statuses.
      sig do
        params(
          body: T::Array[Amocrm::V4CustomerStatusesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomerStatusesCreateResponse::Variants)
      end
      def customer_statuses_create(body:, request_options: {})
      end

      # Delete a status by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomerStatusesDeleteByIDResponse::Variants
        )
      end
      def customer_statuses_delete_by_id(id, request_options: {})
      end

      # Get status by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomerStatusesGetByIDResponse::Variants)
      end
      def customer_statuses_get_by_id(id, request_options: {})
      end

      # Get statuses list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::V4CustomerStatusesListResponse::Variants
        )
      end
      def customer_statuses_list(request_options: {})
      end

      # Update a status by id.
      sig do
        params(
          id: Integer,
          color: String,
          name: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomerStatusesUpdateByIDResponse::Variants
        )
      end
      def customer_statuses_update_by_id(
        id,
        color: nil,
        name: nil,
        sort: nil,
        request_options: {}
      )
      end

      # Create transactions for a customer.
      sig do
        params(
          customer_id: Integer,
          body:
            T::Array[Amocrm::V4CustomerTransactionsCreateParams::Body::OrHash],
          accrue_bonus: T::Boolean,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomerTransactionsCreateResponse::Variants
        )
      end
      def customer_transactions_create(
        # Path param
        customer_id,
        # Body param
        body:,
        # Query param
        accrue_bonus: nil,
        request_options: {}
      )
      end

      # Delete a transaction for a customer.
      sig do
        params(
          transaction_id: Integer,
          customer_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomerTransactionsDeleteByIDResponse::Variants
        )
      end
      def customer_transactions_delete_by_id(
        transaction_id,
        customer_id:,
        request_options: {}
      )
      end

      # Get list of transactions.
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomerTransactionsListResponse::Variants)
      end
      def customer_transactions_list(
        filter: nil,
        limit: nil,
        page: nil,
        request_options: {}
      )
      end

      # Get list of transactions for a customer.
      sig do
        params(
          customer_id: Integer,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4CustomerTransactionsListByCustomerResponse::Variants
        )
      end
      def customer_transactions_list_by_customer(
        customer_id,
        filter: nil,
        limit: nil,
        page: nil,
        request_options: {}
      )
      end

      # Create customers.
      sig do
        params(
          body: T::Array[Amocrm::V4CustomersCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomersCreateResponse::Variants)
      end
      def customers_create(body:, request_options: {})
      end

      # Get a customer by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomersGetByIDResponse::Variants)
      end
      def customers_get_by_id(
        id,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Get a list of customers.
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::V4CustomersListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomersListResponse::Variants)
      end
      def customers_list(
        filter: nil,
        limit: nil,
        order: nil,
        page: nil,
        query: nil,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Enable or switch customers mode.
      sig do
        params(
          is_enabled: T::Boolean,
          mode: Amocrm::V4CustomersModeSetModeParams::Mode::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomersModeSetModeResponse::Variants)
      end
      def customers_mode_set_mode(is_enabled:, mode:, request_options: {})
      end

      # Update customers (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4CustomersUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomersUpdateResponse::Variants)
      end
      def customers_update(body:, request_options: {})
      end

      # Update a customer by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::V4CustomersUpdateByIDParams::Embedded::OrHash,
          custom_fields_values:
            T::Array[
              Amocrm::V4CustomersUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          main_user_id: Integer,
          name: String,
          next_date: Integer,
          next_price: Integer,
          periodicity: Integer,
          responsible_user_id: Integer,
          status_id: Integer,
          tags_to_add:
            T::Array[Amocrm::V4CustomersUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::V4CustomersUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4CustomersUpdateByIDResponse::Variants)
      end
      def customers_update_by_id(
        id,
        _embedded: nil,
        custom_fields_values: nil,
        main_user_id: nil,
        name: nil,
        next_date: nil,
        next_price: nil,
        periodicity: nil,
        responsible_user_id: nil,
        status_id: nil,
        tags_to_add: nil,
        tags_to_delete: nil,
        updated_at: nil,
        updated_by: nil,
        request_options: {}
      )
      end

      # Add followers.
      sig do
        params(
          entity_id: Integer,
          entity_type: Amocrm::V4EntityFollowersAddParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4EntityFollowersAddParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityFollowersAddResponse::Variants)
      end
      def entity_followers_add(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Get followers list.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::V4EntityFollowersListParams::EntityType::OrSymbol,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityFollowersListResponse::Variants)
      end
      def entity_followers_list(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Query param
        limit: nil,
        # Query param
        page: nil,
        request_options: {}
      )
      end

      # Remove followers.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::V4EntityFollowersRemoveParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4EntityFollowersRemoveParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityFollowersRemoveResponse::Variants)
      end
      def entity_followers_remove(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Link entities (bulk).
      sig do
        params(
          entity_type: Amocrm::V4EntityLinksLinkParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4EntityLinksLinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityLinksLinkResponse::Variants)
      end
      def entity_links_link(entity_type, body:, request_options: {})
      end

      # Link entities for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::V4EntityLinksLinkByEntityParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4EntityLinksLinkByEntityParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityLinksLinkByEntityResponse::Variants)
      end
      def entity_links_link_by_entity(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Get list of linked entities (bulk).
      sig do
        params(
          entity_type: Amocrm::V4EntityLinksListParams::EntityType::OrSymbol,
          filter: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityLinksListResponse::Variants)
      end
      def entity_links_list(entity_type, filter: nil, request_options: {})
      end

      # Get links for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::V4EntityLinksListByEntityParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityLinksListByEntityResponse::Variants)
      end
      def entity_links_list_by_entity(
        entity_id,
        entity_type:,
        request_options: {}
      )
      end

      # Unlink entities (bulk).
      sig do
        params(
          entity_type: Amocrm::V4EntityLinksUnlinkParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4EntityLinksUnlinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityLinksUnlinkResponse::Variants)
      end
      def entity_links_unlink(entity_type, body:, request_options: {})
      end

      # Unlink entities for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::V4EntityLinksUnlinkByEntityParams::EntityType::OrSymbol,
          body:
            T::Array[Amocrm::V4EntityLinksUnlinkByEntityParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityLinksUnlinkByEntityResponse::Variants)
      end
      def entity_links_unlink_by_entity(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Create notes for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::V4EntityNotesByParentCreateByParentParams::EntityType::OrSymbol,
          body:
            T::Array[
              Amocrm::V4EntityNotesByParentCreateByParentParams::Body::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4EntityNotesByParentCreateByParentResponse::Variants
        )
      end
      def entity_notes_by_parent_create_by_parent(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Get note by id for a specific entity.
      sig do
        params(
          note_id: Integer,
          entity_type:
            Amocrm::V4EntityNotesByParentGetByParentIDParams::EntityType::OrSymbol,
          entity_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4EntityNotesByParentGetByParentIDResponse::Variants
        )
      end
      def entity_notes_by_parent_get_by_parent_id(
        # Path param
        note_id,
        # Path param
        entity_type:,
        # Path param
        entity_id:,
        # Query param
        with: nil,
        request_options: {}
      )
      end

      # Get notes list for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::V4EntityNotesByParentListByParentParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4EntityNotesByParentListByParentResponse::Variants
        )
      end
      def entity_notes_by_parent_list_by_parent(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Query param
        filter: nil,
        # Query param
        limit: nil,
        # Query param
        page: nil,
        request_options: {}
      )
      end

      # Update notes for a specific entity (batch).
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::V4EntityNotesByParentUpdateByParentParams::EntityType::OrSymbol,
          body:
            T::Array[
              Amocrm::V4EntityNotesByParentUpdateByParentParams::Body::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4EntityNotesByParentUpdateByParentResponse::Variants
        )
      end
      def entity_notes_by_parent_update_by_parent(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Update note by id for a specific entity.
      sig do
        params(
          note_id: Integer,
          entity_type:
            Amocrm::V4EntityNotesByParentUpdateByParentIDParams::EntityType::OrSymbol,
          body_entity_id: Integer,
          note_type: String,
          params: T.anything,
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4EntityNotesByParentUpdateByParentIDResponse::Variants
        )
      end
      def entity_notes_by_parent_update_by_parent_id(
        # Path param
        note_id,
        # Path param
        entity_type:,
        # Body param
        body_entity_id: nil,
        # Body param
        note_type: nil,
        # Body param
        params: nil,
        # Body param
        updated_at: nil,
        # Body param
        updated_by: nil,
        request_options: {}
      )
      end

      # Create notes for entity type.
      sig do
        params(
          entity_type: Amocrm::V4EntityNotesCreateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4EntityNotesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityNotesCreateResponse::Variants)
      end
      def entity_notes_create(entity_type, body:, request_options: {})
      end

      # Get note by id.
      sig do
        params(
          id: Integer,
          entity_type: Amocrm::V4EntityNotesGetByIDParams::EntityType::OrSymbol,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityNotesGetByIDResponse::Variants)
      end
      def entity_notes_get_by_id(
        # Path param
        id,
        # Path param
        entity_type:,
        # Query param
        with: nil,
        request_options: {}
      )
      end

      # Get notes list for entity type.
      sig do
        params(
          entity_type: Amocrm::V4EntityNotesListParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityNotesListResponse::Variants)
      end
      def entity_notes_list(
        entity_type,
        filter: nil,
        limit: nil,
        page: nil,
        request_options: {}
      )
      end

      # Pin note by id.
      sig do
        params(
          id: Integer,
          entity_type: Amocrm::V4EntityNotesPinParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityNotesPinResponse::Variants)
      end
      def entity_notes_pin(id, entity_type:, request_options: {})
      end

      # Unpin note by id.
      sig do
        params(
          id: Integer,
          entity_type: Amocrm::V4EntityNotesUnpinParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityNotesUnpinResponse::Variants)
      end
      def entity_notes_unpin(id, entity_type:, request_options: {})
      end

      # Update notes for entity type (batch).
      sig do
        params(
          entity_type: Amocrm::V4EntityNotesUpdateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4EntityNotesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityNotesUpdateResponse::Variants)
      end
      def entity_notes_update(entity_type, body:, request_options: {})
      end

      # Update note by id.
      sig do
        params(
          id: Integer,
          entity_type:
            Amocrm::V4EntityNotesUpdateByIDParams::EntityType::OrSymbol,
          entity_id: Integer,
          note_type: String,
          params: T.anything,
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EntityNotesUpdateByIDResponse::Variants)
      end
      def entity_notes_update_by_id(
        # Path param
        id,
        # Path param
        entity_type:,
        # Body param
        entity_id: nil,
        # Body param
        note_type: nil,
        # Body param
        params: nil,
        # Body param
        updated_at: nil,
        # Body param
        updated_by: nil,
        request_options: {}
      )
      end

      # Get event by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EventsGetByIDResponse::Variants)
      end
      def events_get_by_id(id, with: nil, request_options: {})
      end

      # Get events list.
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EventsListResponse::Variants)
      end
      def events_list(
        filter: nil,
        limit: nil,
        page: nil,
        with: nil,
        request_options: {}
      )
      end

      # Get event types.
      sig do
        params(
          language_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4EventsListTypesResponse::Variants)
      end
      def events_list_types(language_code: nil, request_options: {})
      end

      # Create leads.
      sig do
        params(
          body: T::Array[Amocrm::V4LeadsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4LeadsCreateResponse::Variants)
      end
      def leads_create(body:, request_options: {})
      end

      # Create leads using the complex method (supports unsorted metadata).
      sig do
        params(
          body: T::Array[Amocrm::V4LeadsCreateComplexParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4LeadsCreateComplexResponse::Variants)
      end
      def leads_create_complex(body:, request_options: {})
      end

      # Get a lead by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4LeadsGetByIDResponse::Variants)
      end
      def leads_get_by_id(
        id,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Get a list of leads (pagination, sorting, filtering).
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::V4LeadsListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4LeadsListResponse::Variants)
      end
      def leads_list(
        # Filtering parameters, see filters API
        filter: nil,
        # Pagination limit
        limit: nil,
        # Sorting, e.g. order[updated_at]=asc
        order: nil,
        # Pagination page
        page: nil,
        # Search by query string or id
        query: nil,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Update leads (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4LeadsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4LeadsUpdateResponse::Variants)
      end
      def leads_update(body:, request_options: {})
      end

      # Update a lead by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::V4LeadsUpdateByIDParams::Embedded::OrHash,
          closed_at: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::V4LeadsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          group_id: Integer,
          loss_reason_id: Integer,
          name: String,
          pipeline_id: Integer,
          price: Integer,
          responsible_user_id: Integer,
          status_id: Integer,
          tags_to_add:
            T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::V4LeadsUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4LeadsUpdateByIDResponse::Variants)
      end
      def leads_update_by_id(
        id,
        _embedded: nil,
        closed_at: nil,
        # Custom fields payload
        custom_fields_values: nil,
        group_id: nil,
        loss_reason_id: nil,
        name: nil,
        pipeline_id: nil,
        price: nil,
        responsible_user_id: nil,
        status_id: nil,
        # Tags to attach
        tags_to_add: nil,
        # Tags to delete
        tags_to_delete: nil,
        updated_at: nil,
        request_options: {}
      )
      end

      # Create statuses.
      sig do
        params(
          pipeline_id: Integer,
          body: T::Array[Amocrm::V4PipelineStatusesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelineStatusesCreateResponse::Variants)
      end
      def pipeline_statuses_create(pipeline_id, body:, request_options: {})
      end

      # Delete status by id.
      sig do
        params(
          id: Integer,
          pipeline_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4PipelineStatusesDeleteByIDResponse::Variants
        )
      end
      def pipeline_statuses_delete_by_id(id, pipeline_id:, request_options: {})
      end

      # Get status by id.
      sig do
        params(
          id: Integer,
          pipeline_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelineStatusesGetByIDResponse::Variants)
      end
      def pipeline_statuses_get_by_id(
        # Path param
        id,
        # Path param
        pipeline_id:,
        # Query param: Expand related entities; comma-separated values (e.g.
        # descriptions).
        with: nil,
        request_options: {}
      )
      end

      # Get statuses for a pipeline.
      sig do
        params(
          pipeline_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelineStatusesListResponse::Variants)
      end
      def pipeline_statuses_list(
        pipeline_id,
        # Expand related entities; comma-separated values (e.g. descriptions).
        with: nil,
        request_options: {}
      )
      end

      # Update statuses (batch).
      sig do
        params(
          pipeline_id: Integer,
          body: T::Array[Amocrm::V4PipelineStatusesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelineStatusesUpdateResponse::Variants)
      end
      def pipeline_statuses_update(pipeline_id, body:, request_options: {})
      end

      # Update status by id.
      sig do
        params(
          id: Integer,
          pipeline_id: Integer,
          color: String,
          descriptions:
            T::Array[
              Amocrm::V4PipelineStatusesUpdateByIDParams::Description::OrHash
            ],
          name: String,
          request_id: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4PipelineStatusesUpdateByIDResponse::Variants
        )
      end
      def pipeline_statuses_update_by_id(
        # Path param
        id,
        # Path param
        pipeline_id:,
        # Body param
        color: nil,
        # Body param
        descriptions: nil,
        # Body param
        name: nil,
        # Body param
        request_id: nil,
        # Body param
        sort: nil,
        request_options: {}
      )
      end

      # Create pipelines.
      sig do
        params(
          body: T::Array[Amocrm::V4PipelinesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelinesCreateResponse::Variants)
      end
      def pipelines_create(body:, request_options: {})
      end

      # Delete pipeline by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelinesDeleteByIDResponse::Variants)
      end
      def pipelines_delete_by_id(id, request_options: {})
      end

      # Get pipeline by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelinesGetByIDResponse::Variants)
      end
      def pipelines_get_by_id(id, request_options: {})
      end

      # Get pipelines list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::V4PipelinesListResponse::Variants
        )
      end
      def pipelines_list(request_options: {})
      end

      # Update pipelines (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4PipelinesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelinesUpdateResponse::Variants)
      end
      def pipelines_update(body:, request_options: {})
      end

      # Update pipeline by id.
      sig do
        params(
          id: Integer,
          is_archive: T::Boolean,
          is_main: T::Boolean,
          is_unsorted_on: T::Boolean,
          name: String,
          request_id: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4PipelinesUpdateByIDResponse::Variants)
      end
      def pipelines_update_by_id(
        id,
        is_archive: nil,
        is_main: nil,
        is_unsorted_on: nil,
        name: nil,
        request_id: nil,
        sort: nil,
        request_options: {}
      )
      end

      # Create roles (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4RolesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4RolesCreateResponse::Variants)
      end
      def roles_create(body:, request_options: {})
      end

      # Delete role by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4RolesDeleteByIDResponse::Variants)
      end
      def roles_delete_by_id(id, request_options: {})
      end

      # Get role by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4RolesGetByIDResponse::Variants)
      end
      def roles_get_by_id(id, with: nil, request_options: {})
      end

      # Get roles list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4RolesListResponse::Variants)
      end
      def roles_list(limit: nil, page: nil, with: nil, request_options: {})
      end

      # Update role by id.
      sig do
        params(
          id: Integer,
          name: String,
          request_id: String,
          rights: T.nilable(Amocrm::V4RolesUpdateByIDParams::Rights::OrHash),
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4RolesUpdateByIDResponse::Variants)
      end
      def roles_update_by_id(
        id,
        name: nil,
        request_id: nil,
        rights: nil,
        request_options: {}
      )
      end

      # Create short link.
      sig do
        params(
          url: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4ShortLinksCreateResponse::Variants)
      end
      def short_links_create(url:, request_options: {})
      end

      # Create sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4SourcesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4SourcesCreateResponse::Variants)
      end
      def sources_create(body:, request_options: {})
      end

      # Delete sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4SourcesDeleteParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4SourcesDeleteResponse::Variants)
      end
      def sources_delete(body:, request_options: {})
      end

      # Delete source by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4SourcesDeleteByIDResponse::Variants)
      end
      def sources_delete_by_id(id, request_options: {})
      end

      # Get source by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4SourcesGetByIDResponse::Variants)
      end
      def sources_get_by_id(id, request_options: {})
      end

      # Get sources list.
      sig do
        params(
          filter: Amocrm::V4SourcesListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4SourcesListResponse::Variants)
      end
      def sources_list(filter: nil, request_options: {})
      end

      # Update sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4SourcesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4SourcesUpdateResponse::Variants)
      end
      def sources_update(body:, request_options: {})
      end

      # Update source by id.
      sig do
        params(
          id: Integer,
          default: T::Boolean,
          external_id: String,
          name: String,
          origin_code: T.nilable(String),
          pipeline_id: T.nilable(Integer),
          request_id: String,
          services: Amocrm::V4SourcesUpdateByIDParams::Services::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4SourcesUpdateByIDResponse::Variants)
      end
      def sources_update_by_id(
        id,
        default: nil,
        external_id: nil,
        name: nil,
        origin_code: nil,
        pipeline_id: nil,
        request_id: nil,
        services: nil,
        request_options: {}
      )
      end

      # Create tags.
      sig do
        params(
          entity_type: Amocrm::V4TagsCreateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::V4TagsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TagsCreateResponse::Variants)
      end
      def tags_create(entity_type, body:, request_options: {})
      end

      # Get tags list.
      sig do
        params(
          entity_type: Amocrm::V4TagsListParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          query: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TagsListResponse::Variants)
      end
      def tags_list(
        entity_type,
        filter: nil,
        limit: nil,
        page: nil,
        query: nil,
        request_options: {}
      )
      end

      # Close talk by id (optionally force without NPS bot).
      sig do
        params(
          id: Integer,
          force_close: T::Boolean,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TalksCloseResponse::Variants)
      end
      def talks_close(
        id,
        # Force close talk without NPS bot.
        force_close: nil,
        request_options: {}
      )
      end

      # Get talk by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TalksGetByIDResponse::Variants)
      end
      def talks_get_by_id(id, request_options: {})
      end

      # Create tasks.
      sig do
        params(
          body: T::Array[Amocrm::V4TasksCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TasksCreateResponse::Variants)
      end
      def tasks_create(body:, request_options: {})
      end

      # Get a task by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TasksGetByIDResponse::Variants)
      end
      def tasks_get_by_id(id, request_options: {})
      end

      # Get a list of tasks (pagination, sorting, filtering).
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::V4TasksListParams::Query::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TasksListResponse::Variants)
      end
      def tasks_list(
        # Filtering parameters
        filter: nil,
        # Pagination limit
        limit: nil,
        # Sorting, e.g. order[updated_at]=asc
        order: nil,
        # Pagination page
        page: nil,
        # Search by query string or id
        query: nil,
        request_options: {}
      )
      end

      # Update tasks (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4TasksUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TasksUpdateResponse::Variants)
      end
      def tasks_update(body:, request_options: {})
      end

      # Update a task by id.
      sig do
        params(
          id: Integer,
          complete_till: Integer,
          entity_id: Integer,
          entity_type: String,
          is_completed: T::Boolean,
          responsible_user_id: Integer,
          result: Amocrm::V4TasksUpdateByIDParams::Result::OrHash,
          task_type_id: Integer,
          text: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4TasksUpdateByIDResponse::Variants)
      end
      def tasks_update_by_id(
        id,
        complete_till: nil,
        entity_id: nil,
        entity_type: nil,
        is_completed: nil,
        responsible_user_id: nil,
        result: nil,
        task_type_id: nil,
        text: nil,
        request_options: {}
      )
      end

      sig do
        params(
          uid: String,
          status_id: Integer,
          user_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4UnsortedLeadsAcceptResponse::Variants)
      end
      def unsorted_leads_accept(
        uid,
        # Status id for the created lead
        status_id: nil,
        # User id on whose behalf the item is accepted
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          body:
            T::Array[Amocrm::V4UnsortedLeadsCreateFormsParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4UnsortedLeadsCreateFormsResponse::Variants)
      end
      def unsorted_leads_create_forms(body:, request_options: {})
      end

      sig do
        params(
          uid: String,
          user_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4UnsortedLeadsDeclineResponse::Variants)
      end
      def unsorted_leads_decline(
        uid,
        # User id on whose behalf the item is declined
        user_id: nil,
        request_options: {}
      )
      end

      # Create users (batch).
      sig do
        params(
          body: T::Array[Amocrm::V4UsersCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4UsersCreateResponse::Variants)
      end
      def users_create(body:, request_options: {})
      end

      # Get user by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4UsersGetByIDResponse::Variants)
      end
      def users_get_by_id(id, with: nil, request_options: {})
      end

      # Get users list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4UsersListResponse::Variants)
      end
      def users_list(limit: nil, page: nil, with: nil, request_options: {})
      end

      # Get webhooks list.
      sig do
        params(
          filter: Amocrm::V4WebhooksListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WebhooksListResponse::Variants)
      end
      def webhooks_list(filter: nil, request_options: {})
      end

      # Subscribe to webhook events.
      sig do
        params(
          destination: String,
          settings: T::Array[String],
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WebhooksSubscribeResponse::Variants)
      end
      def webhooks_subscribe(
        destination:,
        settings:,
        sort: nil,
        request_options: {}
      )
      end

      # Unsubscribe webhook by destination.
      sig do
        params(
          destination: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WebhooksUnsubscribeResponse::Variants)
      end
      def webhooks_unsubscribe(destination:, request_options: {})
      end

      # Connect online chat to CRM Plugin.
      sig do
        params(
          source_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4WebsiteButtonsConnectOnlineChatResponse::Variants
        )
      end
      def website_buttons_connect_online_chat(source_id, request_options: {})
      end

      # Create CRM Plugin.
      sig do
        params(
          pipeline_id: Integer,
          is_used_in_app: T::Boolean,
          trusted_websites: T::Array[String],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WebsiteButtonsCreateResponse::Variants)
      end
      def website_buttons_create(
        pipeline_id:,
        is_used_in_app: nil,
        trusted_websites: nil,
        request_options: {}
      )
      end

      # Get CRM Plugin by source id.
      sig do
        params(
          source_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::V4WebsiteButtonsGetBySourceIDResponse::Variants
        )
      end
      def website_buttons_get_by_source_id(
        source_id,
        with: nil,
        request_options: {}
      )
      end

      # Get CRM Plugin list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WebsiteButtonsListResponse::Variants)
      end
      def website_buttons_list(
        limit: nil,
        page: nil,
        with: nil,
        request_options: {}
      )
      end

      # Update CRM Plugin trusted domains.
      sig do
        params(
          source_id: Integer,
          trusted_websites:
            Amocrm::V4WebsiteButtonsUpdateParams::TrustedWebsites::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WebsiteButtonsUpdateResponse::Variants)
      end
      def website_buttons_update(
        source_id,
        trusted_websites:,
        request_options: {}
      )
      end

      sig do
        params(
          continue_id: Integer,
          bot_type:
            Amocrm::V4WidgetBotContinueContinueParams::BotType::OrSymbol,
          bot_id: Integer,
          data: T.anything,
          execute_handlers:
            T::Array[
              Amocrm::V4WidgetBotContinueContinueParams::ExecuteHandler::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WidgetBotContinueContinueResponse::Variants)
      end
      def widget_bot_continue_continue(
        # Path param
        continue_id,
        # Path param
        bot_type:,
        # Path param
        bot_id:,
        # Body param
        data: nil,
        # Body param
        execute_handlers: nil,
        request_options: {}
      )
      end

      # Get widget info by code.
      sig do
        params(
          widget_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WidgetsGetByCodeResponse::Variants)
      end
      def widgets_get_by_code(widget_code, request_options: {})
      end

      # Install widget in account.
      sig do
        params(
          widget_code: String,
          body: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WidgetsInstallResponse::Variants)
      end
      def widgets_install(widget_code, body:, request_options: {})
      end

      # Get widgets list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WidgetsListResponse::Variants)
      end
      def widgets_list(limit: nil, page: nil, request_options: {})
      end

      # Uninstall widget from account.
      sig do
        params(
          widget_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::V4WidgetsUninstallResponse::Variants)
      end
      def widgets_uninstall(widget_code, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
