# frozen_string_literal: true

module Amocrm
  module Models
    # Тип примечания.
    module NoteType
      extend Amocrm::Internal::Type::Enum

      COMMON = :common
      CALL_IN = :call_in
      CALL_OUT = :call_out
      SERVICE_MESSAGE = :service_message
      MESSAGE_CASHIER = :message_cashier
      GEOLOCATION = :geolocation
      SMS_IN = :sms_in
      SMS_OUT = :sms_out
      EXTENDED_SERVICE_MESSAGE = :extended_service_message
      ATTACHMENT = :attachment

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
