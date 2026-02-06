# frozen_string_literal: true

module Amocrm
  module Resources
    class ShortLinks
      # Create short link.
      #
      # @overload create(url:, request_options: {})
      #
      # @param url [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::ShortLinkCreateResponse::ShortLinkCreateResponse, Amocrm::Models::ShortLinkCreateResponse::Problem]
      #
      # @see Amocrm::Models::ShortLinkCreateParams
      def create(params)
        parsed, options = Amocrm::ShortLinkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/short_links",
          body: parsed,
          model: Amocrm::Models::ShortLinkCreateResponse,
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
