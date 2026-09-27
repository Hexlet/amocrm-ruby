# typed: strong

module Amocrm
  module Models
    # Тип примечания.
    module NoteType
      extend Amocrm::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Amocrm::NoteType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      COMMON = T.let(:common, Amocrm::NoteType::TaggedSymbol)
      CALL_IN = T.let(:call_in, Amocrm::NoteType::TaggedSymbol)
      CALL_OUT = T.let(:call_out, Amocrm::NoteType::TaggedSymbol)
      SERVICE_MESSAGE = T.let(:service_message, Amocrm::NoteType::TaggedSymbol)
      MESSAGE_CASHIER = T.let(:message_cashier, Amocrm::NoteType::TaggedSymbol)
      GEOLOCATION = T.let(:geolocation, Amocrm::NoteType::TaggedSymbol)
      SMS_IN = T.let(:sms_in, Amocrm::NoteType::TaggedSymbol)
      SMS_OUT = T.let(:sms_out, Amocrm::NoteType::TaggedSymbol)
      EXTENDED_SERVICE_MESSAGE =
        T.let(:extended_service_message, Amocrm::NoteType::TaggedSymbol)
      ATTACHMENT = T.let(:attachment, Amocrm::NoteType::TaggedSymbol)

      sig { override.returns(T::Array[Amocrm::NoteType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
