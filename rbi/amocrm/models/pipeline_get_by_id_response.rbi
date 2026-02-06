# typed: strong

module Amocrm
  module Models
    module PipelineGetByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::PipelineGetByIDResponse::Pipeline,
            Amocrm::Models::PipelineGetByIDResponse::Problem
          )
        end

      class Pipeline < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::PipelineGetByIDResponse::Pipeline,
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
              Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(Integer)) }
        attr_reader :account_id

        sig { params(account_id: Integer).void }
        attr_writer :account_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_archive

        sig { params(is_archive: T::Boolean).void }
        attr_writer :is_archive

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_main

        sig { params(is_main: T::Boolean).void }
        attr_writer :is_main

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_unsorted_on

        sig { params(is_unsorted_on: T::Boolean).void }
        attr_writer :is_unsorted_on

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Integer)) }
        attr_reader :sort

        sig { params(sort: Integer).void }
        attr_writer :sort

        sig do
          params(
            id: Integer,
            _embedded:
              Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::OrHash,
            _links: T.anything,
            account_id: Integer,
            is_archive: T::Boolean,
            is_main: T::Boolean,
            is_unsorted_on: T::Boolean,
            name: String,
            sort: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          _embedded: nil,
          _links: nil,
          account_id: nil,
          is_archive: nil,
          is_main: nil,
          is_unsorted_on: nil,
          name: nil,
          sort: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              _embedded:
                Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded,
              _links: T.anything,
              account_id: Integer,
              is_archive: T::Boolean,
              is_main: T::Boolean,
              is_unsorted_on: T::Boolean,
              name: String,
              sort: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status
                ]
              )
            )
          end
          attr_reader :statuses

          sig do
            params(
              statuses:
                T::Array[
                  Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status::OrHash
                ]
            ).void
          end
          attr_writer :statuses

          sig do
            params(
              statuses:
                T::Array[
                  Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(statuses: nil)
          end

          sig do
            override.returns(
              {
                statuses:
                  T::Array[
                    Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status
                  ]
              }
            )
          end
          def to_hash
          end

          class Status < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status,
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

            sig { returns(T.nilable(String)) }
            attr_reader :color

            sig { params(color: String).void }
            attr_writer :color

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status::Description
                  ]
                )
              )
            end
            attr_accessor :descriptions

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_editable

            sig { params(is_editable: T::Boolean).void }
            attr_writer :is_editable

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(Integer)) }
            attr_reader :pipeline_id

            sig { params(pipeline_id: Integer).void }
            attr_writer :pipeline_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :sort

            sig { params(sort: Integer).void }
            attr_writer :sort

            sig { returns(T.nilable(Integer)) }
            attr_reader :type

            sig { params(type: Integer).void }
            attr_writer :type

            sig do
              params(
                id: Integer,
                account_id: Integer,
                color: String,
                descriptions:
                  T.nilable(
                    T::Array[
                      Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status::Description::OrHash
                    ]
                  ),
                is_editable: T::Boolean,
                name: String,
                pipeline_id: Integer,
                sort: Integer,
                type: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              account_id: nil,
              color: nil,
              descriptions: nil,
              is_editable: nil,
              name: nil,
              pipeline_id: nil,
              sort: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  account_id: Integer,
                  color: String,
                  descriptions:
                    T.nilable(
                      T::Array[
                        Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status::Description
                      ]
                    ),
                  is_editable: T::Boolean,
                  name: String,
                  pipeline_id: Integer,
                  sort: Integer,
                  type: Integer
                }
              )
            end
            def to_hash
            end

            class Description < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::Models::PipelineGetByIDResponse::Pipeline::Embedded::Status::Description,
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
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              sig { returns(T.nilable(String)) }
              attr_reader :level

              sig { params(level: String).void }
              attr_writer :level

              sig { returns(T.nilable(Integer)) }
              attr_reader :pipeline_id

              sig { params(pipeline_id: Integer).void }
              attr_writer :pipeline_id

              sig { returns(T.nilable(Integer)) }
              attr_reader :status_id

              sig { params(status_id: Integer).void }
              attr_writer :status_id

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
                  account_id: Integer,
                  created_at: Integer,
                  created_by: Integer,
                  description: String,
                  level: String,
                  pipeline_id: Integer,
                  status_id: Integer,
                  updated_at: Integer,
                  updated_by: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                account_id: nil,
                created_at: nil,
                created_by: nil,
                description: nil,
                level: nil,
                pipeline_id: nil,
                status_id: nil,
                updated_at: nil,
                updated_by: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    account_id: Integer,
                    created_at: Integer,
                    created_by: Integer,
                    description: String,
                    level: String,
                    pipeline_id: Integer,
                    status_id: Integer,
                    updated_at: Integer,
                    updated_by: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::PipelineGetByIDResponse::Problem,
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
          T::Array[Amocrm::Models::PipelineGetByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
