# typed: strong

module Amocrm
  module Models
    module V4PipelineStatusesGetByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4PipelineStatusesGetByIDResponse::Status,
            Amocrm::Models::V4PipelineStatusesGetByIDResponse::Problem
          )
        end

      class Status < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4PipelineStatusesGetByIDResponse::Status,
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
                Amocrm::Models::V4PipelineStatusesGetByIDResponse::Status::Description
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
                  Amocrm::Models::V4PipelineStatusesGetByIDResponse::Status::Description::OrHash
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
                    Amocrm::Models::V4PipelineStatusesGetByIDResponse::Status::Description
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
                Amocrm::Models::V4PipelineStatusesGetByIDResponse::Status::Description,
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

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4PipelineStatusesGetByIDResponse::Problem,
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
          T::Array[Amocrm::Models::V4PipelineStatusesGetByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
