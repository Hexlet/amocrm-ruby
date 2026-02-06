# typed: strong

module Amocrm
  module Resources
    class EntityFollowers
      # Get followers list.
      sig do
        params(
          entity_id: Integer,
          entity_type: Amocrm::EntityFollowerListParams::EntityType::OrSymbol,
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityFollowerListResponse::Variants)
      end
      def list(
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

      # Add followers.
      sig do
        params(
          entity_id: Integer,
          entity_type: Amocrm::EntityFollowerAddParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityFollowerAddParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityFollowerAddResponse::Variants)
      end
      def add(
        # Path param
        entity_id,
        # Path param
        entity_type:,
        # Body param
        body:,
        request_options: {}
      )
      end

      # Remove followers.
      sig do
        params(
          entity_id: Integer,
          entity_type: Amocrm::EntityFollowerRemoveParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::EntityFollowerRemoveParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EntityFollowerRemoveResponse::Variants)
      end
      def remove(
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
