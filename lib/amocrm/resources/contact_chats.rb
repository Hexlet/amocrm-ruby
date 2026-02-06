# frozen_string_literal: true

module Amocrm
  module Resources
    class ContactChats
      # Get list of linked chats.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Object]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse, Amocrm::Models::ContactChatListResponse::Problem]
      #
      # @see Amocrm::Models::ContactChatListParams
      def list(params = {})
        parsed, options = Amocrm::ContactChatListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/contacts/chats",
          query: parsed,
          model: Amocrm::Models::ContactChatListResponse,
          options: options
        )
      end

      # Link chats to contacts.
      #
      # @overload link(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::ContactChatLinkParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::ContactChatLinkResponse::ContactChatLinksResponse, Amocrm::Models::ContactChatLinkResponse::Problem]
      #
      # @see Amocrm::Models::ContactChatLinkParams
      def link(params)
        parsed, options = Amocrm::ContactChatLinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/contacts/chats",
          body: parsed[:body],
          model: Amocrm::Models::ContactChatLinkResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Amocrm::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
