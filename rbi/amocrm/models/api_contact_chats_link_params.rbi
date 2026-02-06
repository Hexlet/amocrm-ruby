# typed: strong

module Amocrm
  module Models
    class APIContactChatsLinkParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIContactChatsLinkParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::APIContactChatsLinkParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::APIContactChatsLinkParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::APIContactChatsLinkParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::APIContactChatsLinkParams::Body,
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
end
