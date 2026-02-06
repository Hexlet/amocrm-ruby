# typed: strong

module Amocrm
  module Resources
    class API
      # Get account info.
      sig do
        params(
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIAccountGetResponse::Variants)
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
          body: T::Array[Amocrm::APICallsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICallsCreateResponse::Variants)
      end
      def calls_create(body:, request_options: {})
      end

      # Create catalog elements.
      sig do
        params(
          catalog_id: Integer,
          body: T::Array[Amocrm::APICatalogElementsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICatalogElementsCreateResponse::Variants)
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
        ).returns(Amocrm::Models::APICatalogElementsGetByIDResponse::Variants)
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
          query: Amocrm::APICatalogElementsListParams::Query::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICatalogElementsListResponse::Variants)
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
          body: T::Array[Amocrm::APICatalogElementsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICatalogElementsUpdateResponse::Variants)
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
              Amocrm::APICatalogElementsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          request_id: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APICatalogElementsUpdateByIDResponse::Variants
        )
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
          body: T::Array[Amocrm::APICatalogsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICatalogsCreateResponse::Variants)
      end
      def catalogs_create(body:, request_options: {})
      end

      # Get catalog by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICatalogsGetByIDResponse::Variants)
      end
      def catalogs_get_by_id(id, request_options: {})
      end

      # Get catalogs list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICatalogsListResponse::Variants)
      end
      def catalogs_list(limit: nil, page: nil, request_options: {})
      end

      # Update catalogs (batch).
      sig do
        params(
          body: T::Array[Amocrm::APICatalogsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICatalogsUpdateResponse::Variants)
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
        ).returns(Amocrm::Models::APICatalogsUpdateByIDResponse::Variants)
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
          body: T::Array[Amocrm::APICompaniesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICompaniesCreateResponse::Variants)
      end
      def companies_create(body:, request_options: {})
      end

      # Get a company by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICompaniesGetByIDResponse::Variants)
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
          query: Amocrm::APICompaniesListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICompaniesListResponse::Variants)
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
          body: T::Array[Amocrm::APICompaniesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICompaniesUpdateResponse::Variants)
      end
      def companies_update(body:, request_options: {})
      end

      # Update a company by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::APICompaniesUpdateByIDParams::Embedded::OrHash,
          created_at: Integer,
          created_by: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::APICompaniesUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          responsible_user_id: Integer,
          tags_to_add:
            T::Array[Amocrm::APICompaniesUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[
              Amocrm::APICompaniesUpdateByIDParams::TagsToDelete::OrHash
            ],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICompaniesUpdateByIDResponse::Variants)
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
          body: T::Array[Amocrm::APIContactChatsLinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIContactChatsLinkResponse::Variants)
      end
      def contact_chats_link(body:, request_options: {})
      end

      # Get list of linked chats.
      sig do
        params(
          filter: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIContactChatsListResponse::Variants)
      end
      def contact_chats_list(filter: nil, request_options: {})
      end

      # Create contacts.
      sig do
        params(
          body: T::Array[Amocrm::APIContactsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIContactsCreateResponse::Variants)
      end
      def contacts_create(body:, request_options: {})
      end

      # Get a contact by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIContactsGetByIDResponse::Variants)
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
          query: Amocrm::APIContactsListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIContactsListResponse::Variants)
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
          body: T::Array[Amocrm::APIContactsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIContactsUpdateResponse::Variants)
      end
      def contacts_update(body:, request_options: {})
      end

      # Update a contact by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::APIContactsUpdateByIDParams::Embedded::OrHash,
          created_at: Integer,
          created_by: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::APIContactsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          first_name: String,
          last_name: String,
          name: String,
          responsible_user_id: Integer,
          tags_to_add:
            T::Array[Amocrm::APIContactsUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::APIContactsUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIContactsUpdateByIDResponse::Variants)
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
          body:
            T::Array[Amocrm::APICustomFieldGroupsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomFieldGroupsCreateResponse::Variants)
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
          Amocrm::Models::APICustomFieldGroupsDeleteByIDResponse::Variants
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
        ).returns(Amocrm::Models::APICustomFieldGroupsGetByIDResponse::Variants)
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
        ).returns(Amocrm::Models::APICustomFieldGroupsListResponse::Variants)
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
          Amocrm::Models::APICustomFieldGroupsUpdateByIDResponse::Variants
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
          body: T::Array[Amocrm::APICustomFieldsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomFieldsCreateResponse::Variants)
      end
      def custom_fields_create(entity_type, body:, request_options: {})
      end

      # Delete a custom field by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomFieldsDeleteByIDResponse::Variants)
      end
      def custom_fields_delete_by_id(id, entity_type:, request_options: {})
      end

      # Get custom field by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomFieldsGetByIDResponse::Variants)
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
        ).returns(Amocrm::Models::APICustomFieldsListResponse::Variants)
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
          body: T::Array[Amocrm::APICustomFieldsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomFieldsUpdateResponse::Variants)
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
        ).returns(Amocrm::Models::APICustomFieldsUpdateByIDResponse::Variants)
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
        ).returns(
          Amocrm::Models::APICustomerBonusPointsChangeResponse::Variants
        )
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
          body: T::Array[Amocrm::APICustomerSegmentsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomerSegmentsCreateResponse::Variants)
      end
      def customer_segments_create(body:, request_options: {})
      end

      # Delete a segment by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APICustomerSegmentsDeleteByIDResponse::Variants
        )
      end
      def customer_segments_delete_by_id(id, request_options: {})
      end

      # Get segment by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomerSegmentsGetByIDResponse::Variants)
      end
      def customer_segments_get_by_id(id, request_options: {})
      end

      # Get segments list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::APICustomerSegmentsListResponse::Variants
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
              Amocrm::APICustomerSegmentsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APICustomerSegmentsUpdateByIDResponse::Variants
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
          body: T::Array[Amocrm::APICustomerStatusesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomerStatusesCreateResponse::Variants)
      end
      def customer_statuses_create(body:, request_options: {})
      end

      # Delete a status by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APICustomerStatusesDeleteByIDResponse::Variants
        )
      end
      def customer_statuses_delete_by_id(id, request_options: {})
      end

      # Get status by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomerStatusesGetByIDResponse::Variants)
      end
      def customer_statuses_get_by_id(id, request_options: {})
      end

      # Get statuses list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::APICustomerStatusesListResponse::Variants
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
          Amocrm::Models::APICustomerStatusesUpdateByIDResponse::Variants
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
            T::Array[Amocrm::APICustomerTransactionsCreateParams::Body::OrHash],
          accrue_bonus: T::Boolean,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APICustomerTransactionsCreateResponse::Variants
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
          Amocrm::Models::APICustomerTransactionsDeleteByIDResponse::Variants
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
        ).returns(Amocrm::Models::APICustomerTransactionsListResponse::Variants)
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
          Amocrm::Models::APICustomerTransactionsListByCustomerResponse::Variants
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
          body: T::Array[Amocrm::APICustomersCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomersCreateResponse::Variants)
      end
      def customers_create(body:, request_options: {})
      end

      # Get a customer by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomersGetByIDResponse::Variants)
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
          query: Amocrm::APICustomersListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomersListResponse::Variants)
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
          mode: Amocrm::APICustomersModeSetModeParams::Mode::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomersModeSetModeResponse::Variants)
      end
      def customers_mode_set_mode(is_enabled:, mode:, request_options: {})
      end

      # Update customers (batch).
      sig do
        params(
          body: T::Array[Amocrm::APICustomersUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomersUpdateResponse::Variants)
      end
      def customers_update(body:, request_options: {})
      end

      # Update a customer by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::APICustomersUpdateByIDParams::Embedded::OrHash,
          custom_fields_values:
            T::Array[
              Amocrm::APICustomersUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          main_user_id: Integer,
          name: String,
          next_date: Integer,
          next_price: Integer,
          periodicity: Integer,
          responsible_user_id: Integer,
          status_id: Integer,
          tags_to_add:
            T::Array[Amocrm::APICustomersUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[
              Amocrm::APICustomersUpdateByIDParams::TagsToDelete::OrHash
            ],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APICustomersUpdateByIDResponse::Variants)
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
          entity_type:
            Amocrm::APIEntityFollowersAddParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::APIEntityFollowersAddParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityFollowersAddResponse::Variants)
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
            Amocrm::APIEntityFollowersListParams::EntityType::OrSymbol,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityFollowersListResponse::Variants)
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
            Amocrm::APIEntityFollowersRemoveParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::APIEntityFollowersRemoveParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityFollowersRemoveResponse::Variants)
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
          entity_type: Amocrm::APIEntityLinksLinkParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::APIEntityLinksLinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityLinksLinkResponse::Variants)
      end
      def entity_links_link(entity_type, body:, request_options: {})
      end

      # Link entities for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::APIEntityLinksLinkByEntityParams::EntityType::OrSymbol,
          body:
            T::Array[Amocrm::APIEntityLinksLinkByEntityParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityLinksLinkByEntityResponse::Variants)
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
          entity_type: Amocrm::APIEntityLinksListParams::EntityType::OrSymbol,
          filter: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityLinksListResponse::Variants)
      end
      def entity_links_list(entity_type, filter: nil, request_options: {})
      end

      # Get links for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::APIEntityLinksListByEntityParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityLinksListByEntityResponse::Variants)
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
          entity_type: Amocrm::APIEntityLinksUnlinkParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::APIEntityLinksUnlinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityLinksUnlinkResponse::Variants)
      end
      def entity_links_unlink(entity_type, body:, request_options: {})
      end

      # Unlink entities for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::APIEntityLinksUnlinkByEntityParams::EntityType::OrSymbol,
          body:
            T::Array[Amocrm::APIEntityLinksUnlinkByEntityParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIEntityLinksUnlinkByEntityResponse::Variants
        )
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
            Amocrm::APIEntityNotesByParentCreateByParentParams::EntityType::OrSymbol,
          body:
            T::Array[
              Amocrm::APIEntityNotesByParentCreateByParentParams::Body::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIEntityNotesByParentCreateByParentResponse::Variants
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
            Amocrm::APIEntityNotesByParentGetByParentIDParams::EntityType::OrSymbol,
          entity_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIEntityNotesByParentGetByParentIDResponse::Variants
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
            Amocrm::APIEntityNotesByParentListByParentParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIEntityNotesByParentListByParentResponse::Variants
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
            Amocrm::APIEntityNotesByParentUpdateByParentParams::EntityType::OrSymbol,
          body:
            T::Array[
              Amocrm::APIEntityNotesByParentUpdateByParentParams::Body::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::Variants
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
            Amocrm::APIEntityNotesByParentUpdateByParentIDParams::EntityType::OrSymbol,
          body_entity_id: Integer,
          note_type: String,
          params: T.anything,
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIEntityNotesByParentUpdateByParentIDResponse::Variants
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
          entity_type: Amocrm::APIEntityNotesCreateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::APIEntityNotesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityNotesCreateResponse::Variants)
      end
      def entity_notes_create(entity_type, body:, request_options: {})
      end

      # Get note by id.
      sig do
        params(
          id: Integer,
          entity_type:
            Amocrm::APIEntityNotesGetByIDParams::EntityType::OrSymbol,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityNotesGetByIDResponse::Variants)
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
          entity_type: Amocrm::APIEntityNotesListParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityNotesListResponse::Variants)
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
          entity_type: Amocrm::APIEntityNotesPinParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityNotesPinResponse::Variants)
      end
      def entity_notes_pin(id, entity_type:, request_options: {})
      end

      # Unpin note by id.
      sig do
        params(
          id: Integer,
          entity_type: Amocrm::APIEntityNotesUnpinParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityNotesUnpinResponse::Variants)
      end
      def entity_notes_unpin(id, entity_type:, request_options: {})
      end

      # Update notes for entity type (batch).
      sig do
        params(
          entity_type: Amocrm::APIEntityNotesUpdateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::APIEntityNotesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityNotesUpdateResponse::Variants)
      end
      def entity_notes_update(entity_type, body:, request_options: {})
      end

      # Update note by id.
      sig do
        params(
          id: Integer,
          entity_type:
            Amocrm::APIEntityNotesUpdateByIDParams::EntityType::OrSymbol,
          entity_id: Integer,
          note_type: String,
          params: T.anything,
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIEntityNotesUpdateByIDResponse::Variants)
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
        ).returns(Amocrm::Models::APIEventsGetByIDResponse::Variants)
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
        ).returns(Amocrm::Models::APIEventsListResponse::Variants)
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
        ).returns(Amocrm::Models::APIEventsListTypesResponse::Variants)
      end
      def events_list_types(language_code: nil, request_options: {})
      end

      # Create leads.
      sig do
        params(
          body: T::Array[Amocrm::APILeadsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APILeadsCreateResponse::Variants)
      end
      def leads_create(body:, request_options: {})
      end

      # Create leads using the complex method (supports unsorted metadata).
      sig do
        params(
          body: T::Array[Amocrm::APILeadsCreateComplexParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APILeadsCreateComplexResponse::Variants)
      end
      def leads_create_complex(body:, request_options: {})
      end

      # Get a lead by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APILeadsGetByIDResponse::Variants)
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
          query: Amocrm::APILeadsListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APILeadsListResponse::Variants)
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
          body: T::Array[Amocrm::APILeadsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APILeadsUpdateResponse::Variants)
      end
      def leads_update(body:, request_options: {})
      end

      # Update a lead by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::APILeadsUpdateByIDParams::Embedded::OrHash,
          closed_at: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::APILeadsUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          group_id: Integer,
          loss_reason_id: Integer,
          name: String,
          pipeline_id: Integer,
          price: Integer,
          responsible_user_id: Integer,
          status_id: Integer,
          tags_to_add:
            T::Array[Amocrm::APILeadsUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::APILeadsUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APILeadsUpdateByIDResponse::Variants)
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
          body: T::Array[Amocrm::APIPipelineStatusesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIPipelineStatusesCreateResponse::Variants)
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
          Amocrm::Models::APIPipelineStatusesDeleteByIDResponse::Variants
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
        ).returns(Amocrm::Models::APIPipelineStatusesGetByIDResponse::Variants)
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
        ).returns(Amocrm::Models::APIPipelineStatusesListResponse::Variants)
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
          body: T::Array[Amocrm::APIPipelineStatusesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIPipelineStatusesUpdateResponse::Variants)
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
              Amocrm::APIPipelineStatusesUpdateByIDParams::Description::OrHash
            ],
          name: String,
          request_id: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIPipelineStatusesUpdateByIDResponse::Variants
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
          body: T::Array[Amocrm::APIPipelinesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIPipelinesCreateResponse::Variants)
      end
      def pipelines_create(body:, request_options: {})
      end

      # Delete pipeline by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIPipelinesDeleteByIDResponse::Variants)
      end
      def pipelines_delete_by_id(id, request_options: {})
      end

      # Get pipeline by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIPipelinesGetByIDResponse::Variants)
      end
      def pipelines_get_by_id(id, request_options: {})
      end

      # Get pipelines list.
      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          Amocrm::Models::APIPipelinesListResponse::Variants
        )
      end
      def pipelines_list(request_options: {})
      end

      # Update pipelines (batch).
      sig do
        params(
          body: T::Array[Amocrm::APIPipelinesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIPipelinesUpdateResponse::Variants)
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
        ).returns(Amocrm::Models::APIPipelinesUpdateByIDResponse::Variants)
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
          body: T::Array[Amocrm::APIRolesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIRolesCreateResponse::Variants)
      end
      def roles_create(body:, request_options: {})
      end

      # Delete role by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIRolesDeleteByIDResponse::Variants)
      end
      def roles_delete_by_id(id, request_options: {})
      end

      # Get role by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIRolesGetByIDResponse::Variants)
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
        ).returns(Amocrm::Models::APIRolesListResponse::Variants)
      end
      def roles_list(limit: nil, page: nil, with: nil, request_options: {})
      end

      # Update role by id.
      sig do
        params(
          id: Integer,
          name: String,
          request_id: String,
          rights: T.nilable(Amocrm::APIRolesUpdateByIDParams::Rights::OrHash),
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIRolesUpdateByIDResponse::Variants)
      end
      def roles_update_by_id(
        id,
        name: nil,
        request_id: nil,
        rights: nil,
        request_options: {}
      )
      end

      # Run salesbot (batch, up to 100 tasks).
      sig do
        params(
          body: T::Array[Amocrm::APISalesbotRunParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APISalesbotRunResponse::Variants)
      end
      def salesbot_run(body:, request_options: {})
      end

      # Create short link.
      sig do
        params(
          url: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIShortLinksCreateResponse::Variants)
      end
      def short_links_create(url:, request_options: {})
      end

      # Create sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::APISourcesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APISourcesCreateResponse::Variants)
      end
      def sources_create(body:, request_options: {})
      end

      # Delete sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::APISourcesDeleteParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APISourcesDeleteResponse::Variants)
      end
      def sources_delete(body:, request_options: {})
      end

      # Delete source by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APISourcesDeleteByIDResponse::Variants)
      end
      def sources_delete_by_id(id, request_options: {})
      end

      # Get source by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APISourcesGetByIDResponse::Variants)
      end
      def sources_get_by_id(id, request_options: {})
      end

      # Get sources list.
      sig do
        params(
          filter: Amocrm::APISourcesListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APISourcesListResponse::Variants)
      end
      def sources_list(filter: nil, request_options: {})
      end

      # Update sources (batch).
      sig do
        params(
          body: T::Array[Amocrm::APISourcesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APISourcesUpdateResponse::Variants)
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
          services: Amocrm::APISourcesUpdateByIDParams::Services::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APISourcesUpdateByIDResponse::Variants)
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
          entity_type: Amocrm::APITagsCreateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::APITagsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APITagsCreateResponse::Variants)
      end
      def tags_create(entity_type, body:, request_options: {})
      end

      # Get tags list.
      sig do
        params(
          entity_type: Amocrm::APITagsListParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          query: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APITagsListResponse::Variants)
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
        ).returns(Amocrm::Models::APITalksCloseResponse::Variants)
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
        ).returns(Amocrm::Models::APITalksGetByIDResponse::Variants)
      end
      def talks_get_by_id(id, request_options: {})
      end

      # Create tasks.
      sig do
        params(
          body: T::Array[Amocrm::APITasksCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APITasksCreateResponse::Variants)
      end
      def tasks_create(body:, request_options: {})
      end

      # Get a task by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APITasksGetByIDResponse::Variants)
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
          query: Amocrm::APITasksListParams::Query::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APITasksListResponse::Variants)
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
          body: T::Array[Amocrm::APITasksUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APITasksUpdateResponse::Variants)
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
          result: Amocrm::APITasksUpdateByIDParams::Result::OrHash,
          task_type_id: Integer,
          text: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APITasksUpdateByIDResponse::Variants)
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
        ).returns(Amocrm::Models::APIUnsortedLeadsAcceptResponse::Variants)
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
            T::Array[Amocrm::APIUnsortedLeadsCreateFormsParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::Variants)
      end
      def unsorted_leads_create_forms(body:, request_options: {})
      end

      sig do
        params(
          uid: String,
          user_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIUnsortedLeadsDeclineResponse::Variants)
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
          body: T::Array[Amocrm::APIUsersCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIUsersCreateResponse::Variants)
      end
      def users_create(body:, request_options: {})
      end

      # Get user by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIUsersGetByIDResponse::Variants)
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
        ).returns(Amocrm::Models::APIUsersListResponse::Variants)
      end
      def users_list(limit: nil, page: nil, with: nil, request_options: {})
      end

      # Get webhooks list.
      sig do
        params(
          filter: Amocrm::APIWebhooksListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIWebhooksListResponse::Variants)
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
        ).returns(Amocrm::Models::APIWebhooksSubscribeResponse::Variants)
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
        ).returns(Amocrm::Models::APIWebhooksUnsubscribeResponse::Variants)
      end
      def webhooks_unsubscribe(destination:, request_options: {})
      end

      # Connect online chat to CRM Plugin.
      sig do
        params(
          source_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIWebsiteButtonsConnectOnlineChatResponse::Variants
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
        ).returns(Amocrm::Models::APIWebsiteButtonsCreateResponse::Variants)
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
          Amocrm::Models::APIWebsiteButtonsGetBySourceIDResponse::Variants
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
        ).returns(Amocrm::Models::APIWebsiteButtonsListResponse::Variants)
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
            Amocrm::APIWebsiteButtonsUpdateParams::TrustedWebsites::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIWebsiteButtonsUpdateResponse::Variants)
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
            Amocrm::APIWidgetBotContinueContinueParams::BotType::OrSymbol,
          bot_id: Integer,
          data: T.anything,
          execute_handlers:
            T::Array[
              Amocrm::APIWidgetBotContinueContinueParams::ExecuteHandler::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::APIWidgetBotContinueContinueResponse::Variants
        )
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
        ).returns(Amocrm::Models::APIWidgetsGetByCodeResponse::Variants)
      end
      def widgets_get_by_code(widget_code, request_options: {})
      end

      # Install widget in account.
      sig do
        params(
          widget_code: String,
          body: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIWidgetsInstallResponse::Variants)
      end
      def widgets_install(widget_code, body:, request_options: {})
      end

      # Get widgets list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIWidgetsListResponse::Variants)
      end
      def widgets_list(limit: nil, page: nil, request_options: {})
      end

      # Uninstall widget from account.
      sig do
        params(
          widget_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::APIWidgetsUninstallResponse::Variants)
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
