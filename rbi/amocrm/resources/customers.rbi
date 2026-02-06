# typed: strong

module Amocrm
  module Resources
    class Customers
      # Create customers.
      sig do
        params(
          body: T::Array[Amocrm::CustomerCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Update customers (batch).
      sig do
        params(
          body: T::Array[Amocrm::CustomerUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerUpdateResponse::Variants)
      end
      def update(body:, request_options: {})
      end

      # Get a list of customers.
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          order: T.anything,
          page: Integer,
          query: Amocrm::CustomerListParams::Query::Variants,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerListResponse::Variants)
      end
      def list(
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

      # Get a customer by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerGetByIDResponse::Variants)
      end
      def get_by_id(
        id,
        # Expand related entities; comma-separated values
        with: nil,
        request_options: {}
      )
      end

      # Update a customer by id.
      sig do
        params(
          id: Integer,
          _embedded: Amocrm::CustomerUpdateByIDParams::Embedded::OrHash,
          custom_fields_values:
            T::Array[
              Amocrm::CustomerUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          main_user_id: Integer,
          name: String,
          next_date: Integer,
          next_price: Integer,
          periodicity: Integer,
          responsible_user_id: Integer,
          status_id: Integer,
          tags_to_add:
            T::Array[Amocrm::CustomerUpdateByIDParams::TagsToAdd::OrHash],
          tags_to_delete:
            T::Array[Amocrm::CustomerUpdateByIDParams::TagsToDelete::OrHash],
          updated_at: Integer,
          updated_by: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomerUpdateByIDResponse::Variants)
      end
      def update_by_id(
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

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
