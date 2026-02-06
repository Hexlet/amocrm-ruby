# typed: strong

module Amocrm
  module Models
    module APITasksListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APITasksListResponse::TaskListResponse,
            Amocrm::Models::APITasksListResponse::Problem
          )
        end

      class TaskListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APITasksListResponse::TaskListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::OrHash
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
              Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::OrHash,
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
                Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded,
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
                Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task
                ]
              )
            )
          end
          attr_reader :tasks

          sig do
            params(
              tasks:
                T::Array[
                  Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::OrHash
                ]
            ).void
          end
          attr_writer :tasks

          sig do
            params(
              tasks:
                T::Array[
                  Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(tasks: nil)
          end

          sig do
            override.returns(
              {
                tasks:
                  T::Array[
                    Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task
                  ]
              }
            )
          end
          def to_hash
          end

          class Task < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task,
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

            sig { returns(T.nilable(Integer)) }
            attr_reader :account_id

            sig { params(account_id: Integer).void }
            attr_writer :account_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :complete_till

            sig { params(complete_till: Integer).void }
            attr_writer :complete_till

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_by

            sig { params(created_by: Integer).void }
            attr_writer :created_by

            sig { returns(T.nilable(Integer)) }
            attr_reader :duration

            sig { params(duration: Integer).void }
            attr_writer :duration

            sig { returns(T.nilable(Integer)) }
            attr_reader :entity_id

            sig { params(entity_id: Integer).void }
            attr_writer :entity_id

            sig { returns(T.nilable(String)) }
            attr_reader :entity_type

            sig { params(entity_type: String).void }
            attr_writer :entity_type

            sig { returns(T.nilable(Integer)) }
            attr_reader :group_id

            sig { params(group_id: Integer).void }
            attr_writer :group_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_completed

            sig { params(is_completed: T::Boolean).void }
            attr_writer :is_completed

            sig { returns(T.nilable(Integer)) }
            attr_reader :responsible_user_id

            sig { params(responsible_user_id: Integer).void }
            attr_writer :responsible_user_id

            sig do
              returns(
                T.nilable(
                  Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::Result::Variants
                )
              )
            end
            attr_reader :result

            sig do
              params(
                result:
                  T.any(
                    Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::Result::Text::OrHash,
                    T.anything
                  )
              ).void
            end
            attr_writer :result

            sig { returns(T.nilable(Integer)) }
            attr_reader :task_type_id

            sig { params(task_type_id: Integer).void }
            attr_writer :task_type_id

            sig { returns(T.nilable(String)) }
            attr_reader :text

            sig { params(text: String).void }
            attr_writer :text

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_by

            sig { params(updated_by: Integer).void }
            attr_writer :updated_by

            sig do
              params(
                id: Integer,
                _links: T.anything,
                account_id: Integer,
                complete_till: Integer,
                created_at: Integer,
                created_by: Integer,
                duration: Integer,
                entity_id: Integer,
                entity_type: String,
                group_id: Integer,
                is_completed: T::Boolean,
                responsible_user_id: Integer,
                result:
                  T.any(
                    Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::Result::Text::OrHash,
                    T.anything
                  ),
                task_type_id: Integer,
                text: String,
                updated_at: Integer,
                updated_by: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _links: nil,
              account_id: nil,
              complete_till: nil,
              created_at: nil,
              created_by: nil,
              duration: nil,
              entity_id: nil,
              entity_type: nil,
              group_id: nil,
              is_completed: nil,
              responsible_user_id: nil,
              result: nil,
              task_type_id: nil,
              text: nil,
              updated_at: nil,
              updated_by: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _links: T.anything,
                  account_id: Integer,
                  complete_till: Integer,
                  created_at: Integer,
                  created_by: Integer,
                  duration: Integer,
                  entity_id: Integer,
                  entity_type: String,
                  group_id: Integer,
                  is_completed: T::Boolean,
                  responsible_user_id: Integer,
                  result:
                    Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::Result::Variants,
                  task_type_id: Integer,
                  text: String,
                  updated_at: Integer,
                  updated_by: Integer
                }
              )
            end
            def to_hash
            end

            module Result
              extend Amocrm::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::Result::Text,
                    T.anything
                  )
                end

              class Text < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::Result::Text,
                      Amocrm::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :text

                sig { params(text: String).void }
                attr_writer :text

                sig { params(text: String).returns(T.attached_class) }
                def self.new(text: nil)
                end

                sig { override.returns({ text: String }) }
                def to_hash
                end
              end

              sig do
                override.returns(
                  T::Array[
                    Amocrm::Models::APITasksListResponse::TaskListResponse::Embedded::Task::Result::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APITasksListResponse::Problem,
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
          T::Array[Amocrm::Models::APITasksListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
