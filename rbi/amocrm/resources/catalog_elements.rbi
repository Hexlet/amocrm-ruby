# typed: strong

module Amocrm
  module Resources
    class CatalogElements
      # Create catalog elements.
      sig do
        params(
          catalog_id: Integer,
          body: T::Array[Amocrm::CatalogElementCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogElementCreateResponse::Variants)
      end
      def create(catalog_id, body:, request_options: {})
      end

      # Update catalog elements (batch).
      sig do
        params(
          catalog_id: Integer,
          body: T::Array[Amocrm::CatalogElementUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogElementUpdateResponse::Variants)
      end
      def update(catalog_id, body:, request_options: {})
      end

      # Get catalog elements list.
      sig do
        params(
          catalog_id: Integer,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          query: Amocrm::CatalogElementListParams::Query::Variants,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogElementListResponse::Variants)
      end
      def list(
        catalog_id,
        filter: nil,
        limit: nil,
        page: nil,
        query: nil,
        request_options: {}
      )
      end

      # Get catalog element by id.
      sig do
        params(
          id: Integer,
          catalog_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogElementGetByIDResponse::Variants)
      end
      def get_by_id(
        # Path param
        id,
        # Path param
        catalog_id:,
        # Query param: Additional data to include (comma-separated).
        with: nil,
        request_options: {}
      )
      end

      # Update catalog element by id.
      sig do
        params(
          id: Integer,
          catalog_id: Integer,
          custom_fields_values:
            T::Array[
              Amocrm::CatalogElementUpdateByIDParams::CustomFieldsValue::OrHash
            ],
          name: String,
          request_id: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogElementUpdateByIDResponse::Variants)
      end
      def update_by_id(
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

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
