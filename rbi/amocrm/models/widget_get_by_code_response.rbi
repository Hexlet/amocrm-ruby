# typed: strong

module Amocrm
  module Models
    module WidgetGetByCodeResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::WidgetGetByCodeResponse::Widget,
            Amocrm::Models::WidgetGetByCodeResponse::Problem
          )
        end

      class Widget < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::WidgetGetByCodeResponse::Widget,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(String)) }
        attr_accessor :client_uuid

        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_active_in_account

        sig { params(is_active_in_account: T::Boolean).void }
        attr_writer :is_active_in_account

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_crm_template

        sig { params(is_crm_template: T::Boolean).void }
        attr_writer :is_crm_template

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_lead_source

        sig { params(is_lead_source: T::Boolean).void }
        attr_writer :is_lead_source

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_work_with_dp

        sig { params(is_work_with_dp: T::Boolean).void }
        attr_writer :is_work_with_dp

        sig { returns(T.nilable(Integer)) }
        attr_accessor :pipeline_id

        sig do
          returns(
            T.nilable(
              Amocrm::Models::WidgetGetByCodeResponse::Widget::Rating::Variants
            )
          )
        end
        attr_accessor :rating

        sig { returns(T.nilable(T.anything)) }
        attr_accessor :settings

        sig do
          returns(
            T.nilable(
              T::Array[
                Amocrm::Models::WidgetGetByCodeResponse::Widget::SettingsTemplate
              ]
            )
          )
        end
        attr_reader :settings_template

        sig do
          params(
            settings_template:
              T::Array[
                Amocrm::Models::WidgetGetByCodeResponse::Widget::SettingsTemplate::OrHash
              ]
          ).void
        end
        attr_writer :settings_template

        sig do
          returns(
            T.nilable(
              Amocrm::Models::WidgetGetByCodeResponse::Widget::Version::Variants
            )
          )
        end
        attr_accessor :version

        sig do
          params(
            id: Integer,
            _links: T.anything,
            client_uuid: T.nilable(String),
            code: String,
            is_active_in_account: T::Boolean,
            is_crm_template: T::Boolean,
            is_lead_source: T::Boolean,
            is_work_with_dp: T::Boolean,
            pipeline_id: T.nilable(Integer),
            rating:
              T.nilable(
                Amocrm::Models::WidgetGetByCodeResponse::Widget::Rating::Variants
              ),
            settings: T.nilable(T.anything),
            settings_template:
              T::Array[
                Amocrm::Models::WidgetGetByCodeResponse::Widget::SettingsTemplate::OrHash
              ],
            version:
              T.nilable(
                Amocrm::Models::WidgetGetByCodeResponse::Widget::Version::Variants
              )
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          _links: nil,
          client_uuid: nil,
          code: nil,
          is_active_in_account: nil,
          is_crm_template: nil,
          is_lead_source: nil,
          is_work_with_dp: nil,
          pipeline_id: nil,
          rating: nil,
          settings: nil,
          settings_template: nil,
          version: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              _links: T.anything,
              client_uuid: T.nilable(String),
              code: String,
              is_active_in_account: T::Boolean,
              is_crm_template: T::Boolean,
              is_lead_source: T::Boolean,
              is_work_with_dp: T::Boolean,
              pipeline_id: T.nilable(Integer),
              rating:
                T.nilable(
                  Amocrm::Models::WidgetGetByCodeResponse::Widget::Rating::Variants
                ),
              settings: T.nilable(T.anything),
              settings_template:
                T::Array[
                  Amocrm::Models::WidgetGetByCodeResponse::Widget::SettingsTemplate
                ],
              version:
                T.nilable(
                  Amocrm::Models::WidgetGetByCodeResponse::Widget::Version::Variants
                )
            }
          )
        end
        def to_hash
        end

        module Rating
          extend Amocrm::Internal::Type::Union

          Variants = T.type_alias { T.any(String, Float) }

          sig do
            override.returns(
              T::Array[
                Amocrm::Models::WidgetGetByCodeResponse::Widget::Rating::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class SettingsTemplate < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::WidgetGetByCodeResponse::Widget::SettingsTemplate,
                Amocrm::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_required

          sig { params(is_required: T::Boolean).void }
          attr_writer :is_required

          sig { returns(T.nilable(String)) }
          attr_reader :key

          sig { params(key: String).void }
          attr_writer :key

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              is_required: T::Boolean,
              key: String,
              name: String,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(is_required: nil, key: nil, name: nil, type: nil)
          end

          sig do
            override.returns(
              {
                is_required: T::Boolean,
                key: String,
                name: String,
                type: String
              }
            )
          end
          def to_hash
          end
        end

        module Version
          extend Amocrm::Internal::Type::Union

          Variants = T.type_alias { T.any(String, Integer) }

          sig do
            override.returns(
              T::Array[
                Amocrm::Models::WidgetGetByCodeResponse::Widget::Version::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::WidgetGetByCodeResponse::Problem,
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
          T::Array[Amocrm::Models::WidgetGetByCodeResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
