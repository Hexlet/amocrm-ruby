# typed: strong

module Amocrm
  module Models
    class TalkCloseParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::TalkCloseParams, Amocrm::Internal::AnyHash)
        end

      # Force close talk without NPS bot.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :force_close

      sig { params(force_close: T::Boolean).void }
      attr_writer :force_close

      sig do
        params(
          force_close: T::Boolean,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Force close talk without NPS bot.
        force_close: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { force_close: T::Boolean, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
