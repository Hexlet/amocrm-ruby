# typed: strong

module Amocrm
  module Resources
    class ShortLinks
      # Create short link.
      sig do
        params(
          url: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::ShortLinkCreateResponse::Variants)
      end
      def create(url:, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
