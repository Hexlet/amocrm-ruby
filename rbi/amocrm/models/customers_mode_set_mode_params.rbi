# typed: strong

module Amocrm
  module Models
    class CustomersModeSetModeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CustomersModeSetModeParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :is_enabled

      sig { returns(Amocrm::CustomersModeSetModeParams::Mode::OrSymbol) }
      attr_accessor :mode

      sig do
        params(
          is_enabled: T::Boolean,
          mode: Amocrm::CustomersModeSetModeParams::Mode::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(is_enabled:, mode:, request_options: {})
      end

      sig do
        override.returns(
          {
            is_enabled: T::Boolean,
            mode: Amocrm::CustomersModeSetModeParams::Mode::OrSymbol,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Mode
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Amocrm::CustomersModeSetModeParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEGMENTS =
          T.let(
            :segments,
            Amocrm::CustomersModeSetModeParams::Mode::TaggedSymbol
          )
        PERIODICITY =
          T.let(
            :periodicity,
            Amocrm::CustomersModeSetModeParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Amocrm::CustomersModeSetModeParams::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
