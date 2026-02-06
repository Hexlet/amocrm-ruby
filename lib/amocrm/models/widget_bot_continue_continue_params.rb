# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::WidgetBotContinue#continue
    class WidgetBotContinueContinueParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute bot_type
      #
      #   @return [Symbol, Amocrm::Models::WidgetBotContinueContinueParams::BotType]
      required :bot_type, enum: -> { Amocrm::WidgetBotContinueContinueParams::BotType }

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
      #   @return [Array<Amocrm::Models::WidgetBotContinueContinueParams::ExecuteHandler>, nil]
      optional :execute_handlers,
               -> { Amocrm::Internal::Type::ArrayOf[Amocrm::WidgetBotContinueContinueParams::ExecuteHandler] }

      # @!method initialize(bot_type:, bot_id:, data: nil, execute_handlers: nil, request_options: {})
      #   @param bot_type [Symbol, Amocrm::Models::WidgetBotContinueContinueParams::BotType]
      #   @param bot_id [Integer]
      #   @param data [Object]
      #   @param execute_handlers [Array<Amocrm::Models::WidgetBotContinueContinueParams::ExecuteHandler>]
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
