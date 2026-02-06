# typed: strong

module Amocrm
  module Resources
    class WebsiteButtons
      # Create CRM Plugin.
      sig do
        params(
          pipeline_id: Integer,
          is_used_in_app: T::Boolean,
          trusted_websites: T::Array[String],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WebsiteButtonCreateResponse::Variants)
      end
      def create(
        pipeline_id:,
        is_used_in_app: nil,
        trusted_websites: nil,
        request_options: {}
      )
      end

      # Update CRM Plugin trusted domains.
      sig do
        params(
          source_id: Integer,
          trusted_websites:
            Amocrm::WebsiteButtonUpdateParams::TrustedWebsites::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WebsiteButtonUpdateResponse::Variants)
      end
      def update(source_id, trusted_websites:, request_options: {})
      end

      # Get CRM Plugin list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WebsiteButtonListResponse::Variants)
      end
      def list(limit: nil, page: nil, with: nil, request_options: {})
      end

      # Connect online chat to CRM Plugin.
      sig do
        params(
          source_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(
          Amocrm::Models::WebsiteButtonConnectOnlineChatResponse::Variants
        )
      end
      def connect_online_chat(source_id, request_options: {})
      end

      # Get CRM Plugin by source id.
      sig do
        params(
          source_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WebsiteButtonGetBySourceIDResponse::Variants)
      end
      def get_by_source_id(source_id, with: nil, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
