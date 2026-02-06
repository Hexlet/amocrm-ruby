# typed: strong

module Amocrm
  module Resources
    class Widgets
      # Get widgets list.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WidgetListResponse::Variants)
      end
      def list(limit: nil, page: nil, request_options: {})
      end

      # Get widget info by code.
      sig do
        params(
          widget_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WidgetGetByCodeResponse::Variants)
      end
      def get_by_code(widget_code, request_options: {})
      end

      # Install widget in account.
      sig do
        params(
          widget_code: String,
          body: T.anything,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WidgetInstallResponse::Variants)
      end
      def install(widget_code, body:, request_options: {})
      end

      # Uninstall widget from account.
      sig do
        params(
          widget_code: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WidgetUninstallResponse::Variants)
      end
      def uninstall(widget_code, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
