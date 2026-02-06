# frozen_string_literal: true

module Amocrm
  module Resources
    class WidgetBotContinue
      # @overload continue(continue_id, bot_type:, bot_id:, data: nil, execute_handlers: nil, request_options: {})
      #
      # @param continue_id [Integer] Path param
      #
      # @param bot_type [Symbol, Amocrm::Models::WidgetBotContinueContinueParams::BotType] Path param
      #
      # @param bot_id [Integer] Path param
      #
      # @param data [Object] Body param
      #
      # @param execute_handlers [Array<Amocrm::Models::WidgetBotContinueContinueParams::ExecuteHandler>] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::WidgetBotContinueContinueResponse::EmptyResponse, Amocrm::Models::WidgetBotContinueContinueResponse::Problem]
      #
      # @see Amocrm::Models::WidgetBotContinueContinueParams
      def continue(continue_id, params)
        parsed, options = Amocrm::WidgetBotContinueContinueParams.dump_request(params)
        bot_type =
          parsed.delete(:bot_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        bot_id =
          parsed.delete(:bot_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/%2$s/continue/%3$s", bot_type, bot_id, continue_id],
          body: parsed,
          model: Amocrm::Models::WidgetBotContinueContinueResponse,
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
