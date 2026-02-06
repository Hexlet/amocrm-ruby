# frozen_string_literal: true

module Amocrm
  module Resources
    class Talks
      # Close talk by id (optionally force without NPS bot).
      #
      # @overload close(id, force_close: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param force_close [Boolean] Force close talk without NPS bot.
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TalkCloseResponse::EmptyResponse, Amocrm::Models::TalkCloseResponse::Problem]
      #
      # @see Amocrm::Models::TalkCloseParams
      def close(id, params = {})
        parsed, options = Amocrm::TalkCloseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/talks/%1$s/close", id],
          body: parsed,
          model: Amocrm::Models::TalkCloseResponse,
          options: options
        )
      end

      # Get talk by id.
      #
      # @overload get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::TalkGetByIDResponse::Talk, Amocrm::Models::TalkGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::TalkGetByIDParams
      def get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/talks/%1$s", id],
          model: Amocrm::Models::TalkGetByIDResponse,
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
