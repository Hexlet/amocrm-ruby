# typed: strong

module Amocrm
  module Models
    class TaskUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::TaskUpdateByIDParams, Amocrm::Internal::AnyHash)
        end

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

      sig { returns(T.nilable(Amocrm::TaskUpdateByIDParams::Result)) }
      attr_reader :result

      sig { params(result: Amocrm::TaskUpdateByIDParams::Result::OrHash).void }
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
          complete_till: Integer,
          entity_id: Integer,
          entity_type: String,
          is_completed: T::Boolean,
          responsible_user_id: Integer,
          result: Amocrm::TaskUpdateByIDParams::Result::OrHash,
          task_type_id: Integer,
          text: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        complete_till: nil,
        entity_id: nil,
        entity_type: nil,
        is_completed: nil,
        responsible_user_id: nil,
        result: nil,
        task_type_id: nil,
        text: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            complete_till: Integer,
            entity_id: Integer,
            entity_type: String,
            is_completed: T::Boolean,
            responsible_user_id: Integer,
            result: Amocrm::TaskUpdateByIDParams::Result,
            task_type_id: Integer,
            text: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Result < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::TaskUpdateByIDParams::Result,
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
