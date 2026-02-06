# typed: strong

module Amocrm
  module Models
    module V4WebsiteButtonsListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse,
            Amocrm::Models::V4WebsiteButtonsListResponse::Problem
          )
        end

      class WebsiteButtonListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(Integer)) }
        attr_reader :_page

        sig { params(_page: Integer).void }
        attr_writer :_page

        sig do
          params(
            _embedded:
              Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded::OrHash,
            _links: T.anything,
            _page: Integer
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil, _page: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded,
              _links: T.anything,
              _page: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded::WebsiteButton
                ]
              )
            )
          end
          attr_reader :website_buttons

          sig do
            params(
              website_buttons:
                T::Array[
                  Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded::WebsiteButton::OrHash
                ]
            ).void
          end
          attr_writer :website_buttons

          sig do
            params(
              website_buttons:
                T::Array[
                  Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded::WebsiteButton::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(website_buttons: nil)
          end

          sig do
            override.returns(
              {
                website_buttons:
                  T::Array[
                    Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded::WebsiteButton
                  ]
              }
            )
          end
          def to_hash
          end

          class WebsiteButton < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::V4WebsiteButtonsListResponse::WebsiteButtonListResponse::Embedded::WebsiteButton,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :account_id

            sig { params(account_id: Integer).void }
            attr_writer :account_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :button_id

            sig { params(button_id: Integer).void }
            attr_writer :button_id

            sig { returns(T.nilable(String)) }
            attr_reader :creation_status

            sig { params(creation_status: String).void }
            attr_writer :creation_status

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_duplication_control_enabled

            sig { params(is_duplication_control_enabled: T::Boolean).void }
            attr_writer :is_duplication_control_enabled

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(Integer)) }
            attr_accessor :pipeline_id

            sig { returns(T.nilable(String)) }
            attr_accessor :script

            sig { returns(T.nilable(Integer)) }
            attr_reader :source_id

            sig { params(source_id: Integer).void }
            attr_writer :source_id

            sig do
              params(
                account_id: Integer,
                button_id: Integer,
                creation_status: String,
                is_duplication_control_enabled: T::Boolean,
                name: String,
                pipeline_id: T.nilable(Integer),
                script: T.nilable(String),
                source_id: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              account_id: nil,
              button_id: nil,
              creation_status: nil,
              is_duplication_control_enabled: nil,
              name: nil,
              pipeline_id: nil,
              script: nil,
              source_id: nil
            )
            end

            sig do
              override.returns(
                {
                  account_id: Integer,
                  button_id: Integer,
                  creation_status: String,
                  is_duplication_control_enabled: T::Boolean,
                  name: String,
                  pipeline_id: T.nilable(Integer),
                  script: T.nilable(String),
                  source_id: Integer
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
              Amocrm::Models::V4WebsiteButtonsListResponse::Problem,
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
          T::Array[Amocrm::Models::V4WebsiteButtonsListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
