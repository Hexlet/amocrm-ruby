# typed: strong

module Amocrm
  module Resources
    class Account
      # Get account info.
      sig do
        params(
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::AccountGetResponse::Variants)
      end
      def get(
        # Additional data to include (comma-separated).
        with: nil,
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
