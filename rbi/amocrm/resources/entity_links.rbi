# typed: strong

module Amocrm
  module Resources
    class EntityLinks
      # Get list of linked entities (bulk).
      sig do
        params(
          entity_type: Amocrm::EntityLinkListParams::EntityType::OrSymbol,
          filter: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityLinkListResponse::Variants)
      end
      def list(entity_type, filter: nil, request_options: {})
      end

      # Link entities (bulk).
      sig do
        params(
          entity_type: Amocrm::EntityLinkLinkParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityLinkLinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityLinkLinkResponse::Variants)
      end
      def link(entity_type, body:, request_options: {})
      end

      # Link entities for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::EntityLinkLinkByEntityParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityLinkLinkByEntityParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityLinkLinkByEntityResponse::Variants)
      end
      def link_by_entity(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Get links for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::EntityLinkListByEntityParams::EntityType::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityLinkListByEntityResponse::Variants)
      end
      def list_by_entity(entity_id, entity_type:, request_options: {})
      end

      # Unlink entities (bulk).
      sig do
        params(
          entity_type: Amocrm::EntityLinkUnlinkParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityLinkUnlinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityLinkUnlinkResponse::Variants)
      end
      def unlink(entity_type, body:, request_options: {})
      end

      # Unlink entities for a specific entity.
      sig do
        params(
          entity_id: Integer,
          entity_type:
            Amocrm::EntityLinkUnlinkByEntityParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityLinkUnlinkByEntityParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityLinkUnlinkByEntityResponse::Variants)
      end
      def unlink_by_entity(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
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
