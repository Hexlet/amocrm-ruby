# frozen_string_literal: true

module Amocrm
  module Resources
    class Widgets
      # Get widgets list.
      #
      # @overload list(limit: nil, page: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WidgetListResponse::WidgetListResponse, Amocrm::Models::WidgetListResponse::Problem]
      #
      # @see Amocrm::Models::WidgetListParams
      def list(params = {})
        parsed, options = Amocrm::WidgetListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/widgets",
          query: parsed,
          model: Amocrm::Models::WidgetListResponse,
          options: options
        )
      end

      # Get widget info by code.
      #
      # @overload get_by_code(widget_code, request_options: {})
      #
      # @param widget_code [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WidgetGetByCodeResponse::Widget, Amocrm::Models::WidgetGetByCodeResponse::Problem]
      #
      # @see Amocrm::Models::WidgetGetByCodeParams
      def get_by_code(widget_code, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/widgets/%1$s", widget_code],
          model: Amocrm::Models::WidgetGetByCodeResponse,
          options: params[:request_options]
        )
      end

      # Install widget in account.
      #
      # @overload install(widget_code, body:, request_options: {})
      #
      # @param widget_code [String]
      # @param body [Object]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WidgetInstallResponse::Widget, Amocrm::Models::WidgetInstallResponse::Problem]
      #
      # @see Amocrm::Models::WidgetInstallParams
      def install(widget_code, params)
        parsed, options = Amocrm::WidgetInstallParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/widgets/%1$s", widget_code],
          body: parsed[:body],
          model: Amocrm::Models::WidgetInstallResponse,
          options: options
        )
      end

      # Uninstall widget from account.
      #
      # @overload uninstall(widget_code, request_options: {})
      #
      # @param widget_code [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WidgetUninstallResponse::EmptyResponse, Amocrm::Models::WidgetUninstallResponse::Problem]
      #
      # @see Amocrm::Models::WidgetUninstallParams
      def uninstall(widget_code, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/widgets/%1$s", widget_code],
          model: Amocrm::Models::WidgetUninstallResponse,
          options: params[:request_options]
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
