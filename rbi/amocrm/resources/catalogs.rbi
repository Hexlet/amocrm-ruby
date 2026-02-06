# typed: strong

module Amocrm
  module Resources
    class Catalogs
      # Create catalogs.
      sig do
        params(
          body: T::Array[Amocrm::CatalogCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogCreateResponse::Variants)
      end
      def create(body:, request_options: {})
      end

      # Update catalogs (batch).
      sig do
        params(
          body: T::Array[Amocrm::CatalogUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogUpdateResponse::Variants)
      end
      def update(body:, request_options: {})
      end

      # Get catalogs list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogListResponse::Variants)
      end
      def list(limit: nil, page: nil, request_options: {})
      end

      # Get catalog by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CatalogGetByIDResponse::Variants)
      end
      def get_by_id(id, request_options: {})
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
        ).returns(Amocrm::Models::CatalogUpdateByIDResponse::Variants)
      end
      def update_by_id(
        id,
        can_add_elements: nil,
        can_link_multiple: nil,
        name: nil,
        request_id: nil,
        sort: nil,
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
