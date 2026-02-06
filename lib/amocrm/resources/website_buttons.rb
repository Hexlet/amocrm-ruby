# frozen_string_literal: true

module Amocrm
  module Resources
    class WebsiteButtons
      # Create CRM Plugin.
      #
      # @overload create(pipeline_id:, is_used_in_app: nil, trusted_websites: nil, request_options: {})
      #
      # @param pipeline_id [Integer]
      # @param is_used_in_app [Boolean]
      # @param trusted_websites [Array<String>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WebsiteButtonCreateResponse::WebsiteButtonCreateResponse, Amocrm::Models::WebsiteButtonCreateResponse::Problem]
      #
      # @see Amocrm::Models::WebsiteButtonCreateParams
      def create(params)
        parsed, options = Amocrm::WebsiteButtonCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/website_buttons",
          body: parsed,
          model: Amocrm::Models::WebsiteButtonCreateResponse,
          options: options
        )
      end

      # Update CRM Plugin trusted domains.
      #
      # @overload update(source_id, trusted_websites:, request_options: {})
      #
      # @param source_id [Integer]
      # @param trusted_websites [Amocrm::Models::WebsiteButtonUpdateParams::TrustedWebsites]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WebsiteButtonUpdateResponse::WebsiteButton, Amocrm::Models::WebsiteButtonUpdateResponse::Problem]
      #
      # @see Amocrm::Models::WebsiteButtonUpdateParams
      def update(source_id, params)
        parsed, options = Amocrm::WebsiteButtonUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/website_buttons/%1$s", source_id],
          body: parsed,
          model: Amocrm::Models::WebsiteButtonUpdateResponse,
          options: options
        )
      end

      # Get CRM Plugin list.
      #
      # @overload list(limit: nil, page: nil, with: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WebsiteButtonListResponse::WebsiteButtonListResponse, Amocrm::Models::WebsiteButtonListResponse::Problem]
      #
      # @see Amocrm::Models::WebsiteButtonListParams
      def list(params = {})
        parsed, options = Amocrm::WebsiteButtonListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/website_buttons",
          query: parsed,
          model: Amocrm::Models::WebsiteButtonListResponse,
          options: options
        )
      end

      # Connect online chat to CRM Plugin.
      #
      # @overload connect_online_chat(source_id, request_options: {})
      #
      # @param source_id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WebsiteButtonConnectOnlineChatResponse::EmptyResponse, Amocrm::Models::WebsiteButtonConnectOnlineChatResponse::Problem]
      #
      # @see Amocrm::Models::WebsiteButtonConnectOnlineChatParams
      def connect_online_chat(source_id, params = {})
        @client.request(
          method: :post,
          path: ["api/v4/website_buttons/%1$s/online_chat", source_id],
          model: Amocrm::Models::WebsiteButtonConnectOnlineChatResponse,
          options: params[:request_options]
        )
      end

      # Get CRM Plugin by source id.
      #
      # @overload get_by_source_id(source_id, with: nil, request_options: {})
      #
      # @param source_id [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WebsiteButtonGetBySourceIDResponse::WebsiteButton, Amocrm::Models::WebsiteButtonGetBySourceIDResponse::Problem]
      #
      # @see Amocrm::Models::WebsiteButtonGetBySourceIDParams
      def get_by_source_id(source_id, params = {})
        parsed, options = Amocrm::WebsiteButtonGetBySourceIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/website_buttons/%1$s", source_id],
          query: parsed,
          model: Amocrm::Models::WebsiteButtonGetBySourceIDResponse,
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
