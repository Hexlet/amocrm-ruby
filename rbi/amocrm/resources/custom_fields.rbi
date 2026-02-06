# typed: strong

module Amocrm
  module Resources
    class CustomFields
      # Create custom fields.
      sig do
        params(
          entity_type: String,
          body: T::Array[Amocrm::CustomFieldCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldCreateResponse::Variants)
      end
      def create(entity_type, body:, request_options: {})
      end

      # Update custom fields (batch).
      sig do
        params(
          entity_type: String,
          body: T::Array[Amocrm::CustomFieldUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldUpdateResponse::Variants)
      end
      def update(entity_type, body:, request_options: {})
      end

      # Get custom fields list.
      sig do
        params(
          entity_type: String,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldListResponse::Variants)
      end
      def list(entity_type, limit: nil, page: nil, request_options: {})
      end

      # Delete a custom field by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldDeleteByIDResponse::Variants)
      end
      def delete_by_id(id, entity_type:, request_options: {})
      end

      # Get custom field by id.
      sig do
        params(
          id: Integer,
          entity_type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomFieldGetByIDResponse::Variants)
      end
      def get_by_id(id, entity_type:, request_options: {})
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
        ).returns(Amocrm::Models::CustomFieldUpdateByIDResponse::Variants)
      end
      def update_by_id(
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

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
