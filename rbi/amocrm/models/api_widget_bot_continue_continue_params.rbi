# typed: strong

module Amocrm
  module Models
    class APIWidgetBotContinueContinueParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::APIWidgetBotContinueContinueParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(Amocrm::APIWidgetBotContinueContinueParams::BotType::OrSymbol)
      end
      attr_accessor :bot_type

      sig { returns(Integer) }
      attr_accessor :bot_id

      sig { returns(T.nilable(T.anything)) }
      attr_reader :data

      sig { params(data: T.anything).void }
      attr_writer :data

      sig do
        returns(
          T.nilable(
            T::Array[Amocrm::APIWidgetBotContinueContinueParams::ExecuteHandler]
          )
        )
      end
      attr_reader :execute_handlers

      sig do
        params(
          execute_handlers:
            T::Array[
              Amocrm::APIWidgetBotContinueContinueParams::ExecuteHandler::OrHash
            ]
        ).void
      end
      attr_writer :execute_handlers

      sig do
        params(
          bot_type:
            Amocrm::APIWidgetBotContinueContinueParams::BotType::OrSymbol,
          bot_id: Integer,
          data: T.anything,
          execute_handlers:
            T::Array[
              Amocrm::APIWidgetBotContinueContinueParams::ExecuteHandler::OrHash
            ],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        bot_type:,
        bot_id:,
        data: nil,
        execute_handlers: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            bot_type:
              Amocrm::APIWidgetBotContinueContinueParams::BotType::OrSymbol,
            bot_id: Integer,
            data: T.anything,
            execute_handlers:
              T::Array[
                Amocrm::APIWidgetBotContinueContinueParams::ExecuteHandler
              ],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      module BotType
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Amocrm::APIWidgetBotContinueContinueParams::BotType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SALESBOT =
          T.let(
            :salesbot,
            Amocrm::APIWidgetBotContinueContinueParams::BotType::TaggedSymbol
          )
        MARKETINGBOT =
          T.let(
            :marketingbot,
            Amocrm::APIWidgetBotContinueContinueParams::BotType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Amocrm::APIWidgetBotContinueContinueParams::BotType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class ExecuteHandler < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::APIWidgetBotContinueContinueParams::ExecuteHandler,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :handler

        sig { params(handler: String).void }
        attr_writer :handler

        sig { returns(T.nilable(T.anything)) }
        attr_reader :params

        sig { params(params: T.anything).void }
        attr_writer :params

        sig do
          params(handler: String, params: T.anything).returns(T.attached_class)
        end
        def self.new(handler: nil, params: nil)
        end

        sig { override.returns({ handler: String, params: T.anything }) }
        def to_hash
        end
      end
    end
  end
end
