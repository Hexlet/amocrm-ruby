# typed: strong

module Amocrm
  module Models
    class APIRolesCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APIRolesCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::APIRolesCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::APIRolesCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::APIRolesCreateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::APIRolesCreateParams::Body, Amocrm::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig { returns(T.nilable(Amocrm::APIRolesCreateParams::Body::Rights)) }
        attr_reader :rights

        sig do
          params(
            rights: Amocrm::APIRolesCreateParams::Body::Rights::OrHash
          ).void
        end
        attr_writer :rights

        sig do
          params(
            name: String,
            request_id: String,
            rights: Amocrm::APIRolesCreateParams::Body::Rights::OrHash
          ).returns(T.attached_class)
        end
        def self.new(name:, request_id: nil, rights: nil)
        end

        sig do
          override.returns(
            {
              name: String,
              request_id: String,
              rights: Amocrm::APIRolesCreateParams::Body::Rights
            }
          )
        end
        def to_hash
        end

        class Rights < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::APIRolesCreateParams::Body::Rights,
                Amocrm::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :catalog_access

          sig { params(catalog_access: T::Boolean).void }
          attr_writer :catalog_access

          sig { returns(T.nilable(T.anything)) }
          attr_reader :companies

          sig { params(companies: T.anything).void }
          attr_writer :companies

          sig { returns(T.nilable(T.anything)) }
          attr_reader :contacts

          sig { params(contacts: T.anything).void }
          attr_writer :contacts

          sig { returns(T.nilable(Integer)) }
          attr_accessor :group_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_active

          sig { params(is_active: T::Boolean).void }
          attr_writer :is_active

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_admin

          sig { params(is_admin: T::Boolean).void }
          attr_writer :is_admin

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_free

          sig { params(is_free: T::Boolean).void }
          attr_writer :is_free

          sig { returns(T.nilable(T.anything)) }
          attr_reader :leads

          sig { params(leads: T.anything).void }
          attr_writer :leads

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :mail_access

          sig { params(mail_access: T::Boolean).void }
          attr_writer :mail_access

          sig { returns(T.nilable(Integer)) }
          attr_accessor :role_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::APIRolesCreateParams::Body::Rights::StatusRight
                ]
              )
            )
          end
          attr_accessor :status_rights

          sig { returns(T.nilable(T.anything)) }
          attr_reader :tasks

          sig { params(tasks: T.anything).void }
          attr_writer :tasks

          sig do
            params(
              catalog_access: T::Boolean,
              companies: T.anything,
              contacts: T.anything,
              group_id: T.nilable(Integer),
              is_active: T::Boolean,
              is_admin: T::Boolean,
              is_free: T::Boolean,
              leads: T.anything,
              mail_access: T::Boolean,
              role_id: T.nilable(Integer),
              status_rights:
                T.nilable(
                  T::Array[
                    Amocrm::APIRolesCreateParams::Body::Rights::StatusRight::OrHash
                  ]
                ),
              tasks: T.anything
            ).returns(T.attached_class)
          end
          def self.new(
            catalog_access: nil,
            companies: nil,
            contacts: nil,
            group_id: nil,
            is_active: nil,
            is_admin: nil,
            is_free: nil,
            leads: nil,
            mail_access: nil,
            role_id: nil,
            status_rights: nil,
            tasks: nil
          )
          end

          sig do
            override.returns(
              {
                catalog_access: T::Boolean,
                companies: T.anything,
                contacts: T.anything,
                group_id: T.nilable(Integer),
                is_active: T::Boolean,
                is_admin: T::Boolean,
                is_free: T::Boolean,
                leads: T.anything,
                mail_access: T::Boolean,
                role_id: T.nilable(Integer),
                status_rights:
                  T.nilable(
                    T::Array[
                      Amocrm::APIRolesCreateParams::Body::Rights::StatusRight
                    ]
                  ),
                tasks: T.anything
              }
            )
          end
          def to_hash
          end

          class StatusRight < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::APIRolesCreateParams::Body::Rights::StatusRight,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :entity_type

            sig { params(entity_type: String).void }
            attr_writer :entity_type

            sig { returns(T.nilable(Integer)) }
            attr_reader :pipeline_id

            sig { params(pipeline_id: Integer).void }
            attr_writer :pipeline_id

            sig { returns(T.nilable(T.anything)) }
            attr_reader :rights

            sig { params(rights: T.anything).void }
            attr_writer :rights

            sig { returns(T.nilable(Integer)) }
            attr_reader :status_id

            sig { params(status_id: Integer).void }
            attr_writer :status_id

            sig do
              params(
                entity_type: String,
                pipeline_id: Integer,
                rights: T.anything,
                status_id: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              entity_type: nil,
              pipeline_id: nil,
              rights: nil,
              status_id: nil
            )
            end

            sig do
              override.returns(
                {
                  entity_type: String,
                  pipeline_id: Integer,
                  rights: T.anything,
                  status_id: Integer
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
