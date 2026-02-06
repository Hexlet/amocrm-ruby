# typed: strong

module Amocrm
  module Models
    class CustomFieldUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CustomFieldUpdateByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :entity_type

      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :enums

      sig { params(enums: T::Array[T.anything]).void }
      attr_writer :enums

      sig { returns(T.nilable(Integer)) }
      attr_reader :group_id

      sig { params(group_id: Integer).void }
      attr_writer :group_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_deletable

      sig { params(is_deletable: T::Boolean).void }
      attr_writer :is_deletable

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_multiple

      sig { params(is_multiple: T::Boolean).void }
      attr_writer :is_multiple

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_required

      sig { params(is_required: T::Boolean).void }
      attr_writer :is_required

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_visible

      sig { params(is_visible: T::Boolean).void }
      attr_writer :is_visible

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(T.anything)) }
      attr_reader :settings

      sig { params(settings: T.anything).void }
      attr_writer :settings

      sig { returns(T.nilable(Integer)) }
      attr_reader :sort

      sig { params(sort: Integer).void }
      attr_writer :sort

      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(
          entity_type: String,
          code: String,
          enums: T::Array[T.anything],
          group_id: Integer,
          is_deletable: T::Boolean,
          is_multiple: T::Boolean,
          is_required: T::Boolean,
          is_visible: T::Boolean,
          name: String,
          settings: T.anything,
          sort: Integer,
          type: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        entity_type:,
        code: nil,
        enums: nil,
        group_id: nil,
        is_deletable: nil,
        is_multiple: nil,
        is_required: nil,
        is_visible: nil,
        name: nil,
        settings: nil,
        sort: nil,
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            entity_type: String,
            code: String,
            enums: T::Array[T.anything],
            group_id: Integer,
            is_deletable: T::Boolean,
            is_multiple: T::Boolean,
            is_required: T::Boolean,
            is_visible: T::Boolean,
            name: String,
            settings: T.anything,
            sort: Integer,
            type: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
