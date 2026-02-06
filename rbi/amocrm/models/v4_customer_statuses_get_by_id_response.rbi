# typed: strong

module Amocrm
  module Models
    module V4CustomerStatusesGetByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4CustomerStatusesGetByIDResponse::CustomerStatus,
            Amocrm::Models::V4CustomerStatusesGetByIDResponse::Problem
          )
        end

      class CustomerStatus < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4CustomerStatusesGetByIDResponse::CustomerStatus,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :color

        sig { params(color: String).void }
        attr_writer :color

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

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
            id: Integer,
            color: String,
            name: String,
            sort: Integer,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(id: nil, color: nil, name: nil, sort: nil, type: nil)
        end

        sig do
          override.returns(
            {
              id: Integer,
              color: String,
              name: String,
              sort: Integer,
              type: String
            }
          )
        end
        def to_hash
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4CustomerStatusesGetByIDResponse::Problem,
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
          T::Array[Amocrm::Models::V4CustomerStatusesGetByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
