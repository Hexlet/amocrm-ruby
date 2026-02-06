# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#widget_bot_continue_continue
    class V4WidgetBotContinueContinueParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute bot_type
      #
      #   @return [Symbol, Amocrm::Models::V4WidgetBotContinueContinueParams::BotType]
      required :bot_type, enum: -> { Amocrm::V4WidgetBotContinueContinueParams::BotType }

      # @!attribute bot_id
      #
      #   @return [Integer]
      required :bot_id, Integer

      # @!attribute data
      #
      #   @return [Object, nil]
      optional :data, Amocrm::Internal::Type::Unknown

      # @!attribute execute_handlers
      #
      #   @return [Array<Amocrm::Models::V4WidgetBotContinueContinueParams::ExecuteHandler>, nil]
      optional :execute_handlers,
               -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4WidgetBotContinueContinueParams::ExecuteHandler] }

      # @!method initialize(bot_type:, bot_id:, data: nil, execute_handlers: nil, request_options: {})
      #   @param bot_type [Symbol, Amocrm::Models::V4WidgetBotContinueContinueParams::BotType]
      #   @param bot_id [Integer]
      #   @param data [Object]
      #   @param execute_handlers [Array<Amocrm::Models::V4WidgetBotContinueContinueParams::ExecuteHandler>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      module BotType
        extend Amocrm::Internal::Type::Enum

        SALESBOT = :salesbot
        MARKETINGBOT = :marketingbot

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ExecuteHandler < Amocrm::Internal::Type::BaseModel
        # @!attribute handler
        #
        #   @return [String, nil]
        optional :handler, String

        # @!attribute params
        #
        #   @return [Object, nil]
        optional :params, Amocrm::Internal::Type::Unknown

        # @!method initialize(handler: nil, params: nil)
        #   @param handler [String]
        #   @param params [Object]
      end
    end
  end
end
