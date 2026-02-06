# typed: strong

module Amocrm
  module Resources
    class Companies
      # Create companies.
      sig do
        params(
          body: T::Array[Amocrm::CompanyCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CompanyCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Update companies (batch).
      sig do
        params(
          body: T::Array[Amocrm::CompanyUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CompanyUpdateResponse::Variants)
      end
      def update(body:, request_options: {})
      end

      # Get a list of companies (pagination, sorting, filtering).
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::CompanyListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CompanyListResponse::Variants)
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

      # Get a company by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CompanyGetByIDResponse::Variants)
      end
      def get_by_id(
        id,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Update a company by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::CompanyUpdateByIDParams::Embedded::OrHash,
          created_at: Integer,
          created_by: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::CompanyUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          responsible_user_id: Integer,
          tags_to_add:
            T::Array[Amocrm::CompanyUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::CompanyUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CompanyUpdateByIDResponse::Variants)
      end
      def update_by_id(
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

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
