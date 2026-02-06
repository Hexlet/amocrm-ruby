# typed: strong

module Amocrm
  module Resources
    class Tags
      # Create tags.
      sig do
        params(
          entity_type: Amocrm::TagCreateParams::EntityType::OrSymbol,
          body: T::Array[Amocrm::TagCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TagCreateResponse::Variants)
      end
      def create(entity_type, body:, request_options: {})
      end

      # Get tags list.
      sig do
        params(
          entity_type: Amocrm::TagListParams::EntityType::OrSymbol,
          filter: T.anything,
          limit: Integer,
          page: Integer,
          query: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TagListResponse::Variants)
      end
      def list(
        entity_type,
        filter: nil,
        limit: nil,
        page: nil,
        query: nil,
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
