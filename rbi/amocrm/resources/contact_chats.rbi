# typed: strong

module Amocrm
  module Resources
    class ContactChats
      # Get list of linked chats.
      sig do
        params(
          filter: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::ContactChatListResponse::Variants)
      end
      def list(filter: nil, request_options: {})
      end

      # Link chats to contacts.
      sig do
        params(
          body: T::Array[Amocrm::ContactChatLinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::ContactChatLinkResponse::Variants)
      end
      def link(body:, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
