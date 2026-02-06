# typed: strong

module Amocrm
  module Models
    module APIAccountGetResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APIAccountGetResponse::AccountInfo,
            Amocrm::Models::APIAccountGetResponse::Problem
          )
        end

      class AccountInfo < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIAccountGetResponse::AccountInfo,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(String)) }
        attr_reader :amojo_id

        sig { params(amojo_id: String).void }
        attr_writer :amojo_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :contact_name_display_order

        sig { params(contact_name_display_order: Integer).void }
        attr_writer :contact_name_display_order

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by

        sig { params(created_by: Integer).void }
        attr_writer :created_by

        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        sig { returns(T.nilable(String)) }
        attr_reader :currency_symbol

        sig { params(currency_symbol: String).void }
        attr_writer :currency_symbol

        sig { returns(T.nilable(Integer)) }
        attr_reader :current_user_id

        sig { params(current_user_id: Integer).void }
        attr_writer :current_user_id

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::Variants
            )
          )
        end
        attr_reader :customers_mode

        sig do
          params(
            customers_mode:
              T.any(
                Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::OrSymbol,
                String
              )
          ).void
        end
        attr_writer :customers_mode

        sig { returns(T.nilable(String)) }
        attr_reader :drive_url

        sig { params(drive_url: String).void }
        attr_writer :drive_url

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIAccountGetResponse::AccountInfo::InvoicesSettings
            )
          )
        end
        attr_reader :invoices_settings

        sig do
          params(
            invoices_settings:
              Amocrm::Models::APIAccountGetResponse::AccountInfo::InvoicesSettings::OrHash
          ).void
        end
        attr_writer :invoices_settings

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_api_filter_enabled

        sig { params(is_api_filter_enabled: T::Boolean).void }
        attr_writer :is_api_filter_enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_helpbot_enabled

        sig { params(is_helpbot_enabled: T::Boolean).void }
        attr_writer :is_helpbot_enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_loss_reason_enabled

        sig { params(is_loss_reason_enabled: T::Boolean).void }
        attr_writer :is_loss_reason_enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_technical_account

        sig { params(is_technical_account: T::Boolean).void }
        attr_writer :is_technical_account

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_unsorted_on

        sig { params(is_unsorted_on: T::Boolean).void }
        attr_writer :is_unsorted_on

        sig { returns(T.nilable(Integer)) }
        attr_reader :mobile_feature_version

        sig { params(mobile_feature_version: Integer).void }
        attr_writer :mobile_feature_version

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :subdomain

        sig { params(subdomain: String).void }
        attr_writer :subdomain

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_at

        sig { params(updated_at: Integer).void }
        attr_writer :updated_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by

        sig { params(updated_by: Integer).void }
        attr_writer :updated_by

        sig { returns(T.nilable(String)) }
        attr_reader :uuid

        sig { params(uuid: String).void }
        attr_writer :uuid

        sig { returns(T.nilable(Integer)) }
        attr_reader :version

        sig { params(version: Integer).void }
        attr_writer :version

        sig do
          params(
            id: Integer,
            _embedded:
              Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::OrHash,
            _links: T.anything,
            amojo_id: String,
            contact_name_display_order: Integer,
            country: String,
            created_at: Integer,
            created_by: Integer,
            currency: String,
            currency_symbol: String,
            current_user_id: Integer,
            customers_mode:
              T.any(
                Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::OrSymbol,
                String
              ),
            drive_url: String,
            invoices_settings:
              Amocrm::Models::APIAccountGetResponse::AccountInfo::InvoicesSettings::OrHash,
            is_api_filter_enabled: T::Boolean,
            is_helpbot_enabled: T::Boolean,
            is_loss_reason_enabled: T::Boolean,
            is_technical_account: T::Boolean,
            is_unsorted_on: T::Boolean,
            mobile_feature_version: Integer,
            name: String,
            subdomain: String,
            updated_at: Integer,
            updated_by: Integer,
            uuid: String,
            version: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          _embedded: nil,
          _links: nil,
          amojo_id: nil,
          contact_name_display_order: nil,
          country: nil,
          created_at: nil,
          created_by: nil,
          currency: nil,
          currency_symbol: nil,
          current_user_id: nil,
          customers_mode: nil,
          drive_url: nil,
          invoices_settings: nil,
          is_api_filter_enabled: nil,
          is_helpbot_enabled: nil,
          is_loss_reason_enabled: nil,
          is_technical_account: nil,
          is_unsorted_on: nil,
          mobile_feature_version: nil,
          name: nil,
          subdomain: nil,
          updated_at: nil,
          updated_by: nil,
          uuid: nil,
          version: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              _embedded:
                Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded,
              _links: T.anything,
              amojo_id: String,
              contact_name_display_order: Integer,
              country: String,
              created_at: Integer,
              created_by: Integer,
              currency: String,
              currency_symbol: String,
              current_user_id: Integer,
              customers_mode:
                Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::Variants,
              drive_url: String,
              invoices_settings:
                Amocrm::Models::APIAccountGetResponse::AccountInfo::InvoicesSettings,
              is_api_filter_enabled: T::Boolean,
              is_helpbot_enabled: T::Boolean,
              is_loss_reason_enabled: T::Boolean,
              is_technical_account: T::Boolean,
              is_unsorted_on: T::Boolean,
              mobile_feature_version: Integer,
              name: String,
              subdomain: String,
              updated_at: Integer,
              updated_by: Integer,
              uuid: String,
              version: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::AmojoRights
              )
            )
          end
          attr_reader :amojo_rights

          sig do
            params(
              amojo_rights:
                Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::AmojoRights::OrHash
            ).void
          end
          attr_writer :amojo_rights

          sig do
            returns(
              T.nilable(
                Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::DatetimeSettings
              )
            )
          end
          attr_reader :datetime_settings

          sig do
            params(
              datetime_settings:
                Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::DatetimeSettings::OrHash
            ).void
          end
          attr_writer :datetime_settings

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::TaskType
                ]
              )
            )
          end
          attr_reader :task_types

          sig do
            params(
              task_types:
                T::Array[
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::TaskType::OrHash
                ]
            ).void
          end
          attr_writer :task_types

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::UsersGroup
                ]
              )
            )
          end
          attr_reader :users_groups

          sig do
            params(
              users_groups:
                T::Array[
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::UsersGroup::OrHash
                ]
            ).void
          end
          attr_writer :users_groups

          sig do
            params(
              amojo_rights:
                Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::AmojoRights::OrHash,
              datetime_settings:
                Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::DatetimeSettings::OrHash,
              task_types:
                T::Array[
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::TaskType::OrHash
                ],
              users_groups:
                T::Array[
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::UsersGroup::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            amojo_rights: nil,
            datetime_settings: nil,
            task_types: nil,
            users_groups: nil
          )
          end

          sig do
            override.returns(
              {
                amojo_rights:
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::AmojoRights,
                datetime_settings:
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::DatetimeSettings,
                task_types:
                  T::Array[
                    Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::TaskType
                  ],
                users_groups:
                  T::Array[
                    Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::UsersGroup
                  ]
              }
            )
          end
          def to_hash
          end

          class AmojoRights < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::AmojoRights,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_create_groups

            sig { params(can_create_groups: T::Boolean).void }
            attr_writer :can_create_groups

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_direct

            sig { params(can_direct: T::Boolean).void }
            attr_writer :can_direct

            sig do
              params(
                can_create_groups: T::Boolean,
                can_direct: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(can_create_groups: nil, can_direct: nil)
            end

            sig do
              override.returns(
                { can_create_groups: T::Boolean, can_direct: T::Boolean }
              )
            end
            def to_hash
            end
          end

          class DatetimeSettings < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::DatetimeSettings,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :date_format

            sig { params(date_format: String).void }
            attr_writer :date_format

            sig { returns(T.nilable(String)) }
            attr_reader :date_pattern

            sig { params(date_pattern: String).void }
            attr_writer :date_pattern

            sig { returns(T.nilable(String)) }
            attr_reader :short_date_pattern

            sig { params(short_date_pattern: String).void }
            attr_writer :short_date_pattern

            sig { returns(T.nilable(String)) }
            attr_reader :short_time_pattern

            sig { params(short_time_pattern: String).void }
            attr_writer :short_time_pattern

            sig { returns(T.nilable(String)) }
            attr_reader :time_format

            sig { params(time_format: String).void }
            attr_writer :time_format

            sig { returns(T.nilable(String)) }
            attr_reader :timezone

            sig { params(timezone: String).void }
            attr_writer :timezone

            sig { returns(T.nilable(String)) }
            attr_reader :timezone_offset

            sig { params(timezone_offset: String).void }
            attr_writer :timezone_offset

            sig do
              params(
                date_format: String,
                date_pattern: String,
                short_date_pattern: String,
                short_time_pattern: String,
                time_format: String,
                timezone: String,
                timezone_offset: String
              ).returns(T.attached_class)
            end
            def self.new(
              date_format: nil,
              date_pattern: nil,
              short_date_pattern: nil,
              short_time_pattern: nil,
              time_format: nil,
              timezone: nil,
              timezone_offset: nil
            )
            end

            sig do
              override.returns(
                {
                  date_format: String,
                  date_pattern: String,
                  short_date_pattern: String,
                  short_time_pattern: String,
                  time_format: String,
                  timezone: String,
                  timezone_offset: String
                }
              )
            end
            def to_hash
            end
          end

          class TaskType < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::TaskType,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :code

            sig { params(code: String).void }
            attr_writer :code

            sig { returns(T.nilable(String)) }
            attr_reader :color

            sig { params(color: String).void }
            attr_writer :color

            sig { returns(T.nilable(Integer)) }
            attr_reader :icon_id

            sig { params(icon_id: Integer).void }
            attr_writer :icon_id

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                id: Integer,
                code: String,
                color: String,
                icon_id: Integer,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              code: nil,
              color: nil,
              icon_id: nil,
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  code: String,
                  color: String,
                  icon_id: Integer,
                  name: String
                }
              )
            end
            def to_hash
            end
          end

          class UsersGroup < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIAccountGetResponse::AccountInfo::Embedded::UsersGroup,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :uuid

            sig { params(uuid: String).void }
            attr_writer :uuid

            sig do
              params(id: Integer, name: String, uuid: String).returns(
                T.attached_class
              )
            end
            def self.new(id: nil, name: nil, uuid: nil)
            end

            sig do
              override.returns({ id: Integer, name: String, uuid: String })
            end
            def to_hash
            end
          end
        end

        module CustomersMode
          extend Amocrm::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::TaggedSymbol,
                String
              )
            end

          sig do
            override.returns(
              T::Array[
                Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERIODICITY =
            T.let(
              :periodicity,
              Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::TaggedSymbol
            )
          DYNAMIC =
            T.let(
              :dynamic,
              Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::TaggedSymbol
            )
          SEGMENTS =
            T.let(
              :segments,
              Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::TaggedSymbol
            )
          UNAVAILABLE =
            T.let(
              :unavailable,
              Amocrm::Models::APIAccountGetResponse::AccountInfo::CustomersMode::TaggedSymbol
            )
        end

        class InvoicesSettings < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APIAccountGetResponse::AccountInfo::InvoicesSettings,
                Amocrm::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :invoices_catalog_id

          sig { params(invoices_catalog_id: Integer).void }
          attr_writer :invoices_catalog_id

          sig { returns(T.nilable(String)) }
          attr_reader :lang

          sig { params(lang: String).void }
          attr_writer :lang

          sig do
            params(invoices_catalog_id: Integer, lang: String).returns(
              T.attached_class
            )
          end
          def self.new(invoices_catalog_id: nil, lang: nil)
          end

          sig do
            override.returns({ invoices_catalog_id: Integer, lang: String })
          end
          def to_hash
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIAccountGetResponse::Problem,
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
          T::Array[Amocrm::Models::APIAccountGetResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
