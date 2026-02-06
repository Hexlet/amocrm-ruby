# typed: strong

module Amocrm
  module Resources
    class CustomersMode
      # Enable or switch customers mode.
      sig do
        params(
          is_enabled: T::Boolean,
          mode: Amocrm::CustomersModeSetModeParams::Mode::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::CustomersModeSetModeResponse::Variants)
      end
      def set_mode(is_enabled:, mode:, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
