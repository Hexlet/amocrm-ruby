# typed: strong

module Amocrm
  module Resources
    class Leads
      # Create leads.
      sig do
        params(
          body: T::Array[Amocrm::LeadCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::LeadCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Update leads (batch).
      sig do
        params(
          body: T::Array[Amocrm::LeadUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::LeadUpdateResponse::Variants)
      end
      def update(body:, request_options: {})
      end

      # Get a list of leads (pagination, sorting, filtering).
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::LeadListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::LeadListResponse::Variants)
      end
      def list(
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

      # Create leads using the complex method (supports unsorted metadata).
      sig do
        params(
          body: T::Array[Amocrm::LeadCreateComplexParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::LeadCreateComplexResponse::Variants)
      end
      def create_complex(body:, request_options: {})
      end

      # Get a lead by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::LeadGetByIDResponse::Variants)
      end
      def get_by_id(
        id,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Update a lead by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::LeadUpdateByIDParams::Embedded::OrHash,
          closed_at: Integer,
          custom_fields_values:
            T::Array[Amocrm::LeadUpdateByIDParams::CustomFieldsValue::OrHash],
          group_id: Integer,
          loss_reason_id: Integer,
          name: String,
          pipeline_id: Integer,
          price: Integer,
          responsible_user_id: Integer,
          status_id: Integer,
          tags_to_add:
            T::Array[Amocrm::LeadUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::LeadUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::LeadUpdateByIDResponse::Variants)
      end
      def update_by_id(
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

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
