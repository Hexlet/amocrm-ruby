# frozen_string_literal: true

module Amocrm
  module Models
    # Параметры примечания: состав зависит от его типа (`note_type`).
    module NoteParams
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::NoteParams::Call }

      variant -> { Amocrm::NoteParams::Geolocation }

      variant -> { Amocrm::NoteParams::Attachment }

      variant -> { Amocrm::NoteParams::MessageCashier }

      variant -> { Amocrm::NoteParams::ServiceMessage }

      variant -> { Amocrm::NoteParams::Sms }

      variant -> { Amocrm::NoteParams::Common }

      # Параметры примечания call_in, call_out.
      class Call < Amocrm::Internal::Type::BaseModel
        # @!attribute uniq
        #   Уникальный идентификатор звонка.
        #
        #   @return [String]
        required :uniq, String

        # @!attribute duration
        #   Длительность звонка в секундах.
        #
        #   @return [Integer]
        required :duration, Integer

        # @!attribute source
        #   Источник звонка.
        #
        #   @return [String]
        required :source, String

        # @!attribute link
        #   Ссылка на запись звонка.
        #
        #   @return [String]
        required :link, String

        # @!attribute phone
        #   Номер телефона.
        #
        #   @return [String]
        required :phone, String

        # @!attribute call_responsible
        #   Ответственный за звонок: имя или ID пользователя.
        #
        #   @return [String, Integer]
        required :call_responsible, union: -> { Amocrm::NoteParams::Call::CallResponsible }

        # @!method initialize(uniq:, duration:, source:, link:, phone:, call_responsible:)
        #   @param uniq [String] Уникальный идентификатор звонка.
        #
        #   @param duration [Integer] Длительность звонка в секундах.
        #
        #   @param source [String] Источник звонка.
        #
        #   @param link [String] Ссылка на запись звонка.
        #
        #   @param phone [String] Номер телефона.
        #
        #   @param call_responsible [String, Integer] Ответственный за звонок: имя или ID пользователя.

        # Ответственный за звонок: имя или ID пользователя.
        #
        # @see Amocrm::Models::NoteParams::Call#call_responsible
        module CallResponsible
          extend Amocrm::Internal::Type::Union

          variant String

          variant Integer

          # @!method self.variants
          #   @return [Array(String, Integer)]
        end
      end

      # Параметры примечания geolocation.
      class Geolocation < Amocrm::Internal::Type::BaseModel
        # @!attribute text
        #   Текст примечания.
        #
        #   @return [String]
        required :text, String

        # @!attribute address
        #   Адрес.
        #
        #   @return [String]
        required :address, String

        # @!attribute longitude
        #   Долгота.
        #
        #   @return [String]
        required :longitude, String

        # @!attribute latitude
        #   Широта.
        #
        #   @return [String]
        required :latitude, String

        # @!method initialize(text:, address:, longitude:, latitude:)
        #   @param text [String] Текст примечания.
        #
        #   @param address [String] Адрес.
        #
        #   @param longitude [String] Долгота.
        #
        #   @param latitude [String] Широта.
      end

      # Параметры примечания attachment.
      class Attachment < Amocrm::Internal::Type::BaseModel
        # @!attribute file_uuid
        #   UUID файла.
        #
        #   @return [String]
        required :file_uuid, String

        # @!attribute file_name
        #   Название файла, которое отображается в примечании.
        #
        #   @return [String]
        required :file_name, String

        # @!attribute version_uuid
        #   Версия файла; без неё берётся последняя.
        #
        #   @return [String, nil]
        optional :version_uuid, String

        # @!method initialize(file_uuid:, file_name:, version_uuid: nil)
        #   @param file_uuid [String] UUID файла.
        #
        #   @param file_name [String] Название файла, которое отображается в примечании.
        #
        #   @param version_uuid [String] Версия файла; без неё берётся последняя.
      end

      # Параметры примечания message_cashier.
      class MessageCashier < Amocrm::Internal::Type::BaseModel
        # @!attribute status
        #   Статус сообщения.
        #
        #   @return [Symbol, Amocrm::Models::NoteParams::MessageCashier::Status]
        required :status, enum: -> { Amocrm::NoteParams::MessageCashier::Status }

        # @!attribute text
        #   Текст примечания.
        #
        #   @return [String]
        required :text, String

        # @!method initialize(status:, text:)
        #   @param status [Symbol, Amocrm::Models::NoteParams::MessageCashier::Status] Статус сообщения.
        #
        #   @param text [String] Текст примечания.

        # Статус сообщения кассиру.
        #
        # @see Amocrm::Models::NoteParams::MessageCashier#status
        module Status
          extend Amocrm::Internal::Type::Enum

          CREATED = :created
          SHOWN = :shown
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Параметры примечания service_message, extended_service_message.
      class ServiceMessage < Amocrm::Internal::Type::BaseModel
        # @!attribute service
        #   Название сервиса.
        #
        #   @return [String]
        required :service, String

        # @!attribute text
        #   Текст примечания.
        #
        #   @return [String]
        required :text, String

        # @!method initialize(service:, text:)
        #   @param service [String] Название сервиса.
        #
        #   @param text [String] Текст примечания.
      end

      # Параметры примечания sms_in, sms_out.
      class Sms < Amocrm::Internal::Type::BaseModel
        # @!attribute text
        #   Текст сообщения.
        #
        #   @return [String]
        required :text, String

        # @!attribute phone
        #   Номер телефона.
        #
        #   @return [String]
        required :phone, String

        # @!method initialize(text:, phone:)
        #   @param text [String] Текст сообщения.
        #
        #   @param phone [String] Номер телефона.
      end

      # Параметры примечания common.
      class Common < Amocrm::Internal::Type::BaseModel
        # @!attribute text
        #   Текст примечания.
        #
        #   @return [String]
        required :text, String

        # @!method initialize(text:)
        #   @param text [String] Текст примечания.
      end

      # @!method self.variants
      #   @return [Array(Amocrm::Models::NoteParams::Call, Amocrm::Models::NoteParams::Geolocation, Amocrm::Models::NoteParams::Attachment, Amocrm::Models::NoteParams::MessageCashier, Amocrm::Models::NoteParams::ServiceMessage, Amocrm::Models::NoteParams::Sms, Amocrm::Models::NoteParams::Common)]
    end
  end
end
