# typed: strong

module Amocrm
  module Resources
    class CustomFieldGroups
      # Create custom field groups.
      sig do
        params(
          entity_type: String,
          body: T::Array[Amocrm::CustomFieldGroupCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldGroupCreateResponse::Variants)
      end
      def create(entity_type, body:, request_options: {})
      end

      # Get custom field groups list.
      sig do
        params(
          entity_type: String,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldGroupListResponse::Variants)
      end
      def list(entity_type, limit: nil, page: nil, request_options: {})
      end

      # Delete a custom field group by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldGroupDeleteByIDResponse::Variants)
      end
      def delete_by_id(id, entity_type:, request_options: {})
      end

      # Get custom field group by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldGroupGetByIDResponse::Variants)
      end
      def get_by_id(id, entity_type:, request_options: {})
      end

      # Update a custom field group by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          name: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldGroupUpdateByIDResponse::Variants)
      end
      def update_by_id(
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

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
