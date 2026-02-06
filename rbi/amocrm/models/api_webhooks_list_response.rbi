# typed: strong

module Amocrm
  module Models
    module APIWebhooksListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APIWebhooksListResponse::WebhookListResponse,
            Amocrm::Models::APIWebhooksListResponse::Problem
          )
        end

      class WebhookListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIWebhooksListResponse::WebhookListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(Integer)) }
        attr_reader :_total_items

        sig { params(_total_items: Integer).void }
        attr_writer :_total_items

        sig do
          params(
            _embedded:
              Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded::OrHash,
            _links: T.anything,
            _total_items: Integer
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil, _total_items: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded,
              _links: T.anything,
              _total_items: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded::Webhook
                ]
              )
            )
          end
          attr_reader :webhooks

          sig do
            params(
              webhooks:
                T::Array[
                  Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded::Webhook::OrHash
                ]
            ).void
          end
          attr_writer :webhooks

          sig do
            params(
              webhooks:
                T::Array[
                  Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded::Webhook::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(webhooks: nil)
          end

          sig do
            override.returns(
              {
                webhooks:
                  T::Array[
                    Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded::Webhook
                  ]
              }
            )
          end
          def to_hash
          end

          class Webhook < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIWebhooksListResponse::WebhookListResponse::Embedded::Webhook,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(Integer)) }
            attr_reader :account_id

            sig { params(account_id: Integer).void }
            attr_writer :account_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_by

            sig { params(created_by: Integer).void }
            attr_writer :created_by

            sig { returns(T.nilable(String)) }
            attr_reader :destination

            sig { params(destination: String).void }
            attr_writer :destination

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :disabled

            sig { params(disabled: T::Boolean).void }
            attr_writer :disabled

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :settings

            sig { params(settings: T::Array[String]).void }
            attr_writer :settings

            sig { returns(T.nilable(Integer)) }
            attr_reader :sort

            sig { params(sort: Integer).void }
            attr_writer :sort

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            sig do
              params(
                id: Integer,
                account_id: Integer,
                created_at: Integer,
                created_by: Integer,
                destination: String,
                disabled: T::Boolean,
                settings: T::Array[String],
                sort: Integer,
                updated_at: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              account_id: nil,
              created_at: nil,
              created_by: nil,
              destination: nil,
              disabled: nil,
              settings: nil,
              sort: nil,
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  account_id: Integer,
                  created_at: Integer,
                  created_by: Integer,
                  destination: String,
                  disabled: T::Boolean,
                  settings: T::Array[String],
                  sort: Integer,
                  updated_at: Integer
                }
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
              Amocrm::Models::APIWebhooksListResponse::Problem,
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
          T::Array[Amocrm::Models::APIWebhooksListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
