# typed: strong

module Amocrm
  module Models
    class V4TasksCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4TasksCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::V4TasksCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4TasksCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4TasksCreateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::V4TasksCreateParams::Body, Amocrm::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :text

        sig { returns(T.nilable(Integer)) }
        attr_reader :complete_till

        sig { params(complete_till: Integer).void }
        attr_writer :complete_till

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by

        sig { params(created_by: Integer).void }
        attr_writer :created_by

        sig { returns(T.nilable(Integer)) }
        attr_reader :entity_id

        sig { params(entity_id: Integer).void }
        attr_writer :entity_id

        sig { returns(T.nilable(String)) }
        attr_reader :entity_type

        sig { params(entity_type: String).void }
        attr_writer :entity_type

        # Client-side request id
        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :responsible_user_id

        sig { params(responsible_user_id: Integer).void }
        attr_writer :responsible_user_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :task_type_id

        sig { params(task_type_id: Integer).void }
        attr_writer :task_type_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by

        sig { params(updated_by: Integer).void }
        attr_writer :updated_by

        sig do
          params(
            text: String,
            complete_till: Integer,
            created_by: Integer,
            entity_id: Integer,
            entity_type: String,
            request_id: String,
            responsible_user_id: Integer,
            task_type_id: Integer,
            updated_by: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          text:,
          complete_till: nil,
          created_by: nil,
          entity_id: nil,
          entity_type: nil,
          # Client-side request id
          request_id: nil,
          responsible_user_id: nil,
          task_type_id: nil,
          updated_by: nil
        )
        end

        sig do
          override.returns(
            {
              text: String,
              complete_till: Integer,
              created_by: Integer,
              entity_id: Integer,
              entity_type: String,
              request_id: String,
              responsible_user_id: Integer,
              task_type_id: Integer,
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
