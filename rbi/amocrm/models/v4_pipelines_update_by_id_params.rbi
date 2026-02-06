# typed: strong

module Amocrm
  module Models
    class V4PipelinesUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4PipelinesUpdateByIDParams, Amocrm::Internal::AnyHash)
        end

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

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :sort

      sig { params(sort: Integer).void }
      attr_writer :sort

      sig do
        params(
          is_archive: T::Boolean,
          is_main: T::Boolean,
          is_unsorted_on: T::Boolean,
          name: String,
          request_id: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        is_archive: nil,
        is_main: nil,
        is_unsorted_on: nil,
        name: nil,
        request_id: nil,
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            is_archive: T::Boolean,
            is_main: T::Boolean,
            is_unsorted_on: T::Boolean,
            name: String,
            request_id: String,
            sort: Integer,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
