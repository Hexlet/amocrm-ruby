# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Account#get
    module AccountGetResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::AccountGetResponse::AccountInfo }

      variant -> { Amocrm::Models::AccountGetResponse::Problem }

      class AccountInfo < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::AccountGetResponse::AccountInfo::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::AccountGetResponse::AccountInfo::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute amojo_id
        #
        #   @return [String, nil]
        optional :amojo_id, String

        # @!attribute contact_name_display_order
        #
        #   @return [Integer, nil]
        optional :contact_name_display_order, Integer

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute currency
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute currency_symbol
        #
        #   @return [String, nil]
        optional :currency_symbol, String

        # @!attribute current_user_id
        #
        #   @return [Integer, nil]
        optional :current_user_id, Integer

        # @!attribute customers_mode
        #
        #   @return [Symbol, String, Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode, nil]
        optional :customers_mode, union: -> { Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode }

        # @!attribute drive_url
        #
        #   @return [String, nil]
        optional :drive_url, String

        # @!attribute invoices_settings
        #
        #   @return [Amocrm::Models::AccountGetResponse::AccountInfo::InvoicesSettings, nil]
        optional :invoices_settings, -> { Amocrm::Models::AccountGetResponse::AccountInfo::InvoicesSettings }

        # @!attribute is_api_filter_enabled
        #
        #   @return [Boolean, nil]
        optional :is_api_filter_enabled, Amocrm::Internal::Type::Boolean

        # @!attribute is_helpbot_enabled
        #
        #   @return [Boolean, nil]
        optional :is_helpbot_enabled, Amocrm::Internal::Type::Boolean

        # @!attribute is_loss_reason_enabled
        #
        #   @return [Boolean, nil]
        optional :is_loss_reason_enabled, Amocrm::Internal::Type::Boolean

        # @!attribute is_technical_account
        #
        #   @return [Boolean, nil]
        optional :is_technical_account, Amocrm::Internal::Type::Boolean

        # @!attribute is_unsorted_on
        #
        #   @return [Boolean, nil]
        optional :is_unsorted_on, Amocrm::Internal::Type::Boolean

        # @!attribute mobile_feature_version
        #
        #   @return [Integer, nil]
        optional :mobile_feature_version, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute subdomain
        #
        #   @return [String, nil]
        optional :subdomain, String

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!attribute uuid
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!attribute version
        #
        #   @return [Integer, nil]
        optional :version, Integer

        # @!method initialize(id: nil, _embedded: nil, _links: nil, amojo_id: nil, contact_name_display_order: nil, country: nil, created_at: nil, created_by: nil, currency: nil, currency_symbol: nil, current_user_id: nil, customers_mode: nil, drive_url: nil, invoices_settings: nil, is_api_filter_enabled: nil, is_helpbot_enabled: nil, is_loss_reason_enabled: nil, is_technical_account: nil, is_unsorted_on: nil, mobile_feature_version: nil, name: nil, subdomain: nil, updated_at: nil, updated_by: nil, uuid: nil, version: nil)
        #   @param id [Integer]
        #   @param _embedded [Amocrm::Models::AccountGetResponse::AccountInfo::Embedded]
        #   @param _links [Object]
        #   @param amojo_id [String]
        #   @param contact_name_display_order [Integer]
        #   @param country [String]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param currency [String]
        #   @param currency_symbol [String]
        #   @param current_user_id [Integer]
        #   @param customers_mode [Symbol, String, Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode]
        #   @param drive_url [String]
        #   @param invoices_settings [Amocrm::Models::AccountGetResponse::AccountInfo::InvoicesSettings]
        #   @param is_api_filter_enabled [Boolean]
        #   @param is_helpbot_enabled [Boolean]
        #   @param is_loss_reason_enabled [Boolean]
        #   @param is_technical_account [Boolean]
        #   @param is_unsorted_on [Boolean]
        #   @param mobile_feature_version [Integer]
        #   @param name [String]
        #   @param subdomain [String]
        #   @param updated_at [Integer]
        #   @param updated_by [Integer]
        #   @param uuid [String]
        #   @param version [Integer]

        # @see Amocrm::Models::AccountGetResponse::AccountInfo#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute amojo_rights
          #
          #   @return [Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::AmojoRights, nil]
          optional :amojo_rights, -> { Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::AmojoRights }

          # @!attribute datetime_settings
          #
          #   @return [Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::DatetimeSettings, nil]
          optional :datetime_settings,
                   -> { Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::DatetimeSettings }

          # @!attribute task_types
          #
          #   @return [Array<Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::TaskType>, nil]
          optional :task_types,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::TaskType] }

          # @!attribute users_groups
          #
          #   @return [Array<Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::UsersGroup>, nil]
          optional :users_groups,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::UsersGroup] }

          # @!method initialize(amojo_rights: nil, datetime_settings: nil, task_types: nil, users_groups: nil)
          #   @param amojo_rights [Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::AmojoRights]
          #   @param datetime_settings [Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::DatetimeSettings]
          #   @param task_types [Array<Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::TaskType>]
          #   @param users_groups [Array<Amocrm::Models::AccountGetResponse::AccountInfo::Embedded::UsersGroup>]

          # @see Amocrm::Models::AccountGetResponse::AccountInfo::Embedded#amojo_rights
          class AmojoRights < Amocrm::Internal::Type::BaseModel
            # @!attribute can_create_groups
            #
            #   @return [Boolean, nil]
            optional :can_create_groups, Amocrm::Internal::Type::Boolean

            # @!attribute can_direct
            #
            #   @return [Boolean, nil]
            optional :can_direct, Amocrm::Internal::Type::Boolean

            # @!method initialize(can_create_groups: nil, can_direct: nil)
            #   @param can_create_groups [Boolean]
            #   @param can_direct [Boolean]
          end

          # @see Amocrm::Models::AccountGetResponse::AccountInfo::Embedded#datetime_settings
          class DatetimeSettings < Amocrm::Internal::Type::BaseModel
            # @!attribute date_format
            #
            #   @return [String, nil]
            optional :date_format, String

            # @!attribute date_pattern
            #
            #   @return [String, nil]
            optional :date_pattern, String

            # @!attribute short_date_pattern
            #
            #   @return [String, nil]
            optional :short_date_pattern, String

            # @!attribute short_time_pattern
            #
            #   @return [String, nil]
            optional :short_time_pattern, String

            # @!attribute time_format
            #
            #   @return [String, nil]
            optional :time_format, String

            # @!attribute timezone
            #
            #   @return [String, nil]
            optional :timezone, String

            # @!attribute timezone_offset
            #
            #   @return [String, nil]
            optional :timezone_offset, String

            # @!method initialize(date_format: nil, date_pattern: nil, short_date_pattern: nil, short_time_pattern: nil, time_format: nil, timezone: nil, timezone_offset: nil)
            #   @param date_format [String]
            #   @param date_pattern [String]
            #   @param short_date_pattern [String]
            #   @param short_time_pattern [String]
            #   @param time_format [String]
            #   @param timezone [String]
            #   @param timezone_offset [String]
          end

          class TaskType < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute code
            #
            #   @return [String, nil]
            optional :code, String

            # @!attribute color
            #
            #   @return [String, nil]
            optional :color, String

            # @!attribute icon_id
            #
            #   @return [Integer, nil]
            optional :icon_id, Integer

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(id: nil, code: nil, color: nil, icon_id: nil, name: nil)
            #   @param id [Integer]
            #   @param code [String]
            #   @param color [String]
            #   @param icon_id [Integer]
            #   @param name [String]
          end

          class UsersGroup < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute uuid
            #
            #   @return [String, nil]
            optional :uuid, String

            # @!method initialize(id: nil, name: nil, uuid: nil)
            #   @param id [Integer]
            #   @param name [String]
            #   @param uuid [String]
          end
        end

        # @see Amocrm::Models::AccountGetResponse::AccountInfo#customers_mode
        module CustomersMode
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode::PERIODICITY }

          variant const: -> { Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode::DYNAMIC }

          variant const: -> { Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode::SEGMENTS }

          variant const: -> { Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode::DISABLED }

          variant const: -> { Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode::UNAVAILABLE }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::Models::AccountGetResponse::AccountInfo::CustomersMode::TaggedSymbol, String) }
          end

          # @!group

          PERIODICITY = :periodicity
          DYNAMIC = :dynamic
          SEGMENTS = :segments
          DISABLED = :disabled
          UNAVAILABLE = :unavailable

          # @!endgroup
        end

        # @see Amocrm::Models::AccountGetResponse::AccountInfo#invoices_settings
        class InvoicesSettings < Amocrm::Internal::Type::BaseModel
          # @!attribute invoices_catalog_id
          #
          #   @return [Integer, nil]
          optional :invoices_catalog_id, Integer

          # @!attribute lang
          #
          #   @return [String, nil]
          optional :lang, String

          # @!method initialize(invoices_catalog_id: nil, lang: nil)
          #   @param invoices_catalog_id [Integer]
          #   @param lang [String]
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(detail: nil, status: nil, title: nil, type: nil)
        #   @param detail [String]
        #   @param status [Integer]
        #   @param title [String]
        #   @param type [String]
      end

      # @!method self.variants
      #   @return [Array(Amocrm::Models::AccountGetResponse::AccountInfo, Amocrm::Models::AccountGetResponse::Problem)]
    end
  end
end
