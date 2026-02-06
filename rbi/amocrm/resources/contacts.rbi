# typed: strong

module Amocrm
  module Resources
    class Contacts
      # Create contacts.
      sig do
        params(
          body: T::Array[Amocrm::ContactCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::ContactCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Update contacts (batch).
      sig do
        params(
          body: T::Array[Amocrm::ContactUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::ContactUpdateResponse::Variants)
      end
      def update(body:, request_options: {})
      end

      # Get a list of contacts (pagination, sorting, filtering).
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::ContactListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::ContactListResponse::Variants)
      end
      def list(
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

      # Get a contact by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::ContactGetByIDResponse::Variants)
      end
      def get_by_id(
        id,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Update a contact by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::ContactUpdateByIDParams::Embedded::OrHash,
          created_at: Integer,
          created_by: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::ContactUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          first_name: String,
          last_name: String,
          name: String,
          responsible_user_id: Integer,
          tags_to_add:
            T::Array[Amocrm::ContactUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::ContactUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::ContactUpdateByIDResponse::Variants)
      end
      def update_by_id(
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

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
