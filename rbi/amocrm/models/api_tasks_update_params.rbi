# typed: strong

module Amocrm
  module Models
    class APITasksUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::APITasksUpdateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::APITasksUpdateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::APITasksUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::APITasksUpdateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::APITasksUpdateParams::Body, Amocrm::Internal::AnyHash)
          end

        # Task id
        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(T.nilable(Integer)) }
        attr_reader :complete_till

        sig { params(complete_till: Integer).void }
        attr_writer :complete_till

        sig { returns(T.nilable(Integer)) }
        attr_reader :entity_id

        sig { params(entity_id: Integer).void }
        attr_writer :entity_id

        sig { returns(T.nilable(String)) }
        attr_reader :entity_type

        sig { params(entity_type: String).void }
        attr_writer :entity_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_completed

        sig { params(is_completed: T::Boolean).void }
        attr_writer :is_completed

        sig { returns(T.nilable(Integer)) }
        attr_reader :responsible_user_id

        sig { params(responsible_user_id: Integer).void }
        attr_writer :responsible_user_id

        sig { returns(T.nilable(Amocrm::APITasksUpdateParams::Body::Result)) }
        attr_reader :result

        sig do
          params(
            result: Amocrm::APITasksUpdateParams::Body::Result::OrHash
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

        sig do
          params(
            id: Integer,
            complete_till: Integer,
            entity_id: Integer,
            entity_type: String,
            is_completed: T::Boolean,
            responsible_user_id: Integer,
            result: Amocrm::APITasksUpdateParams::Body::Result::OrHash,
            task_type_id: Integer,
            text: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Task id
          id:,
          complete_till: nil,
          entity_id: nil,
          entity_type: nil,
          is_completed: nil,
          responsible_user_id: nil,
          result: nil,
          task_type_id: nil,
          text: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              complete_till: Integer,
              entity_id: Integer,
              entity_type: String,
              is_completed: T::Boolean,
              responsible_user_id: Integer,
              result: Amocrm::APITasksUpdateParams::Body::Result,
              task_type_id: Integer,
              text: String
            }
          )
        end
        def to_hash
        end

        class Result < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::APITasksUpdateParams::Body::Result,
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
      end
    end
  end
end
