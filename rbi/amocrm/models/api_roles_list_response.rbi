# typed: strong

module Amocrm
  module Models
    module APIRolesListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APIRolesListResponse::RoleListResponse,
            Amocrm::Models::APIRolesListResponse::Problem
          )
        end

      class RoleListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIRolesListResponse::RoleListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::OrHash
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

        sig { returns(T.nilable(Integer)) }
        attr_reader :_page_count

        sig { params(_page_count: Integer).void }
        attr_writer :_page_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :_total_items

        sig { params(_total_items: Integer).void }
        attr_writer :_total_items

        sig do
          params(
            _embedded:
              Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::OrHash,
            _links: T.anything,
            _page: Integer,
            _page_count: Integer,
            _total_items: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          _embedded: nil,
          _links: nil,
          _page: nil,
          _page_count: nil,
          _total_items: nil
        )
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded,
              _links: T.anything,
              _page: Integer,
              _page_count: Integer,
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
                Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role
                ]
              )
            )
          end
          attr_reader :roles

          sig do
            params(
              roles:
                T::Array[
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::OrHash
                ]
            ).void
          end
          attr_writer :roles

          sig do
            params(
              roles:
                T::Array[
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(roles: nil)
          end

          sig do
            override.returns(
              {
                roles:
                  T::Array[
                    Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role
                  ]
              }
            )
          end
          def to_hash
          end

          class Role < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role,
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
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded
                )
              )
            end
            attr_reader :_embedded

            sig do
              params(
                _embedded:
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded::OrHash
              ).void
            end
            attr_writer :_embedded

            sig { returns(T.nilable(T.anything)) }
            attr_reader :_links

            sig { params(_links: T.anything).void }
            attr_writer :_links

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              returns(
                T.nilable(
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights
                )
              )
            end
            attr_reader :rights

            sig do
              params(
                rights:
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights::OrHash
              ).void
            end
            attr_writer :rights

            sig do
              params(
                id: Integer,
                _embedded:
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded::OrHash,
                _links: T.anything,
                name: String,
                rights:
                  Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _embedded: nil,
              _links: nil,
              name: nil,
              rights: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _embedded:
                    Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded,
                  _links: T.anything,
                  name: String,
                  rights:
                    Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights
                }
              )
            end
            def to_hash
            end

            class Embedded < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded::User
                    ]
                  )
                )
              end
              attr_reader :users

              sig do
                params(
                  users:
                    T::Array[
                      Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded::User::OrHash
                    ]
                ).void
              end
              attr_writer :users

              sig do
                params(
                  users:
                    T::Array[
                      Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded::User::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(users: nil)
              end

              sig do
                override.returns(
                  {
                    users:
                      T::Array[
                        Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded::User
                      ]
                  }
                )
              end
              def to_hash
              end

              class User < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Embedded::User,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { params(id: Integer).returns(T.attached_class) }
                def self.new(id: nil)
                end

                sig { override.returns({ id: Integer }) }
                def to_hash
                end
              end
            end

            class Rights < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights,
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
                      Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights::StatusRight
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
                        Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights::StatusRight::OrHash
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
                          Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights::StatusRight
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
                      Amocrm::Models::APIRolesListResponse::RoleListResponse::Embedded::Role::Rights::StatusRight,
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

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIRolesListResponse::Problem,
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
          T::Array[Amocrm::Models::APIRolesListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
