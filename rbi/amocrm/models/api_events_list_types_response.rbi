# typed: strong

module Amocrm
  module Models
    module APIEventsListTypesResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse,
            Amocrm::Models::APIEventsListTypesResponse::Problem
          )
        end

      class EventTypesResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse::Embedded::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse::Embedded
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APIEventsListTypesResponse::EventTypesResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :types

          sig { params(types: T::Array[T.anything]).void }
          attr_writer :types

          sig { params(types: T::Array[T.anything]).returns(T.attached_class) }
          def self.new(types: nil)
          end

          sig { override.returns({ types: T::Array[T.anything] }) }
          def to_hash
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIEventsListTypesResponse::Problem,
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
          T::Array[Amocrm::Models::APIEventsListTypesResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
