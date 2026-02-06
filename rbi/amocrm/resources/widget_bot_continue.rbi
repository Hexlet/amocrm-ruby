# typed: strong

module Amocrm
  module Resources
    class WidgetBotContinue
      sig do
        params(
          continue_id: Integer,
          bot_type: Amocrm::WidgetBotContinueContinueParams::BotType::OrSymbol,
          bot_id: Integer,
          data: T.anything,
          execute_handlers:
            T::Array[
              Amocrm::WidgetBotContinueContinueParams::ExecuteHandler::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::WidgetBotContinueContinueResponse::Variants)
      end
      def continue(
        # Path param
        continue_id,
        # Path param
        bot_type:,
        # Path param
        bot_id:,
        # Body param
        data: nil,
        # Body param
        execute_handlers: nil,
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
