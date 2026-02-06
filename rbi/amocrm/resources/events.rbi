# typed: strong

module Amocrm
  module Resources
    class Events
      # Get events list.
      sig do
        params(
          filter: T.anything,
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EventListResponse::Variants)
      end
      def list(
        filter: nil,
        limit: nil,
        page: nil,
        with: nil,
        request_options: {}
      )
      end

      # Get event by id.
      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EventGetByIDResponse::Variants)
      end
      def get_by_id(id, with: nil, request_options: {})
      end

      # Get event types.
      sig do
        params(
          language_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::EventListTypesResponse::Variants)
      end
      def list_types(language_code: nil, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
