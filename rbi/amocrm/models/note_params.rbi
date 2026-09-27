# typed: strong

module Amocrm
  module Models
    # Параметры примечания: состав зависит от его типа (`note_type`).
    module NoteParams
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::NoteParams::Call,
            Amocrm::NoteParams::Geolocation,
            Amocrm::NoteParams::Attachment,
            Amocrm::NoteParams::MessageCashier,
            Amocrm::NoteParams::ServiceMessage,
            Amocrm::NoteParams::Sms,
            Amocrm::NoteParams::Common
          )
        end

      class Call < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::NoteParams::Call, Amocrm::Internal::AnyHash)
          end

        # Уникальный идентификатор звонка.
        sig { returns(String) }
        attr_accessor :uniq

        # Длительность звонка в секундах.
        sig { returns(Integer) }
        attr_accessor :duration

        # Источник звонка.
        sig { returns(String) }
        attr_accessor :source

        # Ссылка на запись звонка.
        sig { returns(String) }
        attr_accessor :link

        # Номер телефона.
        sig { returns(String) }
        attr_accessor :phone

        # Ответственный за звонок: имя или ID пользователя.
        sig { returns(Amocrm::NoteParams::Call::CallResponsible::Variants) }
        attr_accessor :call_responsible

        sig do
          params(
            uniq: String,
            duration: Integer,
            source: String,
            link: String,
            phone: String,
            call_responsible:
              Amocrm::NoteParams::Call::CallResponsible::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          # Уникальный идентификатор звонка.
          uniq:,
          # Длительность звонка в секундах.
          duration:,
          # Источник звонка.
          source:,
          # Ссылка на запись звонка.
          link:,
          # Номер телефона.
          phone:,
          # Ответственный за звонок: имя или ID пользователя.
          call_responsible:
        )
        end

        sig do
          override.returns(
            {
              uniq: String,
              duration: Integer,
              source: String,
              link: String,
              phone: String,
              call_responsible:
                Amocrm::NoteParams::Call::CallResponsible::Variants
            }
          )
        end
        def to_hash
        end

        # Ответственный за звонок: имя или ID пользователя.
        module CallResponsible
          extend Amocrm::Internal::Type::Union

          Variants = T.type_alias { T.any(String, Integer) }

          sig do
            override.returns(
              T::Array[Amocrm::NoteParams::Call::CallResponsible::Variants]
            )
          end
          def self.variants
          end
        end
      end

      class Geolocation < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::NoteParams::Geolocation, Amocrm::Internal::AnyHash)
          end

        # Текст примечания.
        sig { returns(String) }
        attr_accessor :text

        # Адрес.
        sig { returns(String) }
        attr_accessor :address

        # Долгота.
        sig { returns(String) }
        attr_accessor :longitude

        # Широта.
        sig { returns(String) }
        attr_accessor :latitude

        sig do
          params(
            text: String,
            address: String,
            longitude: String,
            latitude: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Текст примечания.
          text:,
          # Адрес.
          address:,
          # Долгота.
          longitude:,
          # Широта.
          latitude:
        )
        end

        sig do
          override.returns(
            {
              text: String,
              address: String,
              longitude: String,
              latitude: String
            }
          )
        end
        def to_hash
        end
      end

      class Attachment < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::NoteParams::Attachment, Amocrm::Internal::AnyHash)
          end

        # UUID файла.
        sig { returns(String) }
        attr_accessor :file_uuid

        # Название файла, которое отображается в примечании.
        sig { returns(String) }
        attr_accessor :file_name

        # Версия файла; без неё берётся последняя.
        sig { returns(T.nilable(String)) }
        attr_reader :version_uuid

        sig { params(version_uuid: String).void }
        attr_writer :version_uuid

        sig do
          params(
            file_uuid: String,
            file_name: String,
            version_uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          # UUID файла.
          file_uuid:,
          # Название файла, которое отображается в примечании.
          file_name:,
          # Версия файла; без неё берётся последняя.
          version_uuid: nil
        )
        end

        sig do
          override.returns(
            { file_uuid: String, file_name: String, version_uuid: String }
          )
        end
        def to_hash
        end
      end

      class MessageCashier < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::NoteParams::MessageCashier, Amocrm::Internal::AnyHash)
          end

        # Статус сообщения.
        sig do
          returns(Amocrm::NoteParams::MessageCashier::Status::TaggedSymbol)
        end
        attr_accessor :status

        # Текст примечания.
        sig { returns(String) }
        attr_accessor :text

        sig do
          params(
            status: Amocrm::NoteParams::MessageCashier::Status::OrSymbol,
            text: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Статус сообщения.
          status:,
          # Текст примечания.
          text:
        )
        end

        sig do
          override.returns(
            {
              status: Amocrm::NoteParams::MessageCashier::Status::TaggedSymbol,
              text: String
            }
          )
        end
        def to_hash
        end

        # Статус сообщения кассиру.
        module Status
          extend Amocrm::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Amocrm::NoteParams::MessageCashier::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Amocrm::NoteParams::MessageCashier::Status::TaggedSymbol
            )
          SHOWN =
            T.let(
              :shown,
              Amocrm::NoteParams::MessageCashier::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              Amocrm::NoteParams::MessageCashier::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Amocrm::NoteParams::MessageCashier::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class ServiceMessage < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::NoteParams::ServiceMessage, Amocrm::Internal::AnyHash)
          end

        # Название сервиса.
        sig { returns(String) }
        attr_accessor :service

        # Текст примечания.
        sig { returns(String) }
        attr_accessor :text

        sig { params(service: String, text: String).returns(T.attached_class) }
        def self.new(
          # Название сервиса.
          service:,
          # Текст примечания.
          text:
        )
        end

        sig { override.returns({ service: String, text: String }) }
        def to_hash
        end
      end

      class Sms < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::NoteParams::Sms, Amocrm::Internal::AnyHash)
          end

        # Текст сообщения.
        sig { returns(String) }
        attr_accessor :text

        # Номер телефона.
        sig { returns(String) }
        attr_accessor :phone

        sig { params(text: String, phone: String).returns(T.attached_class) }
        def self.new(
          # Текст сообщения.
          text:,
          # Номер телефона.
          phone:
        )
        end

        sig { override.returns({ text: String, phone: String }) }
        def to_hash
        end
      end

      class Common < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::NoteParams::Common, Amocrm::Internal::AnyHash)
          end

        # Текст примечания.
        sig { returns(String) }
        attr_accessor :text

        sig { params(text: String).returns(T.attached_class) }
        def self.new(
          # Текст примечания.
          text:
        )
        end

        sig { override.returns({ text: String }) }
        def to_hash
        end
      end

      sig { override.returns(T::Array[Amocrm::NoteParams::Variants]) }
      def self.variants
      end
    end
  end
end
