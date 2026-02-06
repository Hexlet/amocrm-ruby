# typed: strong

module Amocrm
  module Models
    module ContactChatListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse,
            Amocrm::Models::ContactChatListResponse::Problem
          )
        end

      class ContactChatLinksResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig do
          params(
            _embedded:
              Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded,
              _links: T.anything
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded::Chat
                ]
              )
            )
          end
          attr_reader :chats

          sig do
            params(
              chats:
                T::Array[
                  Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded::Chat::OrHash
                ]
            ).void
          end
          attr_writer :chats

          sig do
            params(
              chats:
                T::Array[
                  Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded::Chat::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(chats: nil)
          end

          sig do
            override.returns(
              {
                chats:
                  T::Array[
                    Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded::Chat
                  ]
              }
            )
          end
          def to_hash
          end

          class Chat < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::ContactChatListResponse::ContactChatLinksResponse::Embedded::Chat,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :chat_id

            sig { returns(Integer) }
            attr_accessor :contact_id

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig do
              params(
                chat_id: String,
                contact_id: Integer,
                request_id: String
              ).returns(T.attached_class)
            end
            def self.new(chat_id:, contact_id:, request_id: nil)
            end

            sig do
              override.returns(
                { chat_id: String, contact_id: Integer, request_id: String }
              )
            end
            def to_hash
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::ContactChatListResponse::Problem,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :detail

        sig { params(detail: String).void }
        attr_writer :detail

        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            detail: String,
            status: Integer,
            title: String,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(detail: nil, status: nil, title: nil, type: nil)
        end

        sig do
          override.returns(
            { detail: String, status: Integer, title: String, type: String }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Amocrm::Models::ContactChatListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
