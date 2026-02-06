# frozen_string_literal: true

module Amocrm
  module Resources
    class Webhooks
      # Get webhooks list.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Amocrm::Models::WebhookListParams::Filter]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WebhookListResponse::WebhookListResponse, Amocrm::Models::WebhookListResponse::Problem]
      #
      # @see Amocrm::Models::WebhookListParams
      def list(params = {})
        parsed, options = Amocrm::WebhookListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/webhooks",
          query: parsed,
          model: Amocrm::Models::WebhookListResponse,
          options: options
        )
      end

      # Subscribe to webhook events.
      #
      # @overload subscribe(destination:, settings:, sort: nil, request_options: {})
      #
      # @param destination [String]
      # @param settings [Array<String>]
      # @param sort [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WebhookSubscribeResponse::Webhook, Amocrm::Models::WebhookSubscribeResponse::Problem]
      #
      # @see Amocrm::Models::WebhookSubscribeParams
      def subscribe(params)
        parsed, options = Amocrm::WebhookSubscribeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/webhooks",
          body: parsed,
          model: Amocrm::Models::WebhookSubscribeResponse,
          options: options
        )
      end

      # Unsubscribe webhook by destination.
      #
      # @overload unsubscribe(destination:, request_options: {})
      #
      # @param destination [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WebhookUnsubscribeResponse::EmptyResponse, Amocrm::Models::WebhookUnsubscribeResponse::Problem]
      #
      # @see Amocrm::Models::WebhookUnsubscribeParams
      def unsubscribe(params)
        parsed, options = Amocrm::WebhookUnsubscribeParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "api/v4/webhooks",
          body: parsed,
          model: Amocrm::Models::WebhookUnsubscribeResponse,
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
