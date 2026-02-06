# typed: strong

module Amocrm
  module Models
    class V4PipelinesUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4PipelinesUpdateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::V4PipelinesUpdateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4PipelinesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4PipelinesUpdateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::V4PipelinesUpdateParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

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
            id: Integer,
            is_archive: T::Boolean,
            is_main: T::Boolean,
            is_unsorted_on: T::Boolean,
            name: String,
            request_id: String,
            sort: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          is_archive: nil,
          is_main: nil,
          is_unsorted_on: nil,
          name: nil,
          request_id: nil,
          sort: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              is_archive: T::Boolean,
              is_main: T::Boolean,
              is_unsorted_on: T::Boolean,
              name: String,
              request_id: String,
              sort: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
