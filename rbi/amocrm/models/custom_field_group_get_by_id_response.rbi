# typed: strong

module Amocrm
  module Models
    module CustomFieldGroupGetByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::CustomFieldGroupGetByIDResponse::CustomFieldGroup,
            Amocrm::Models::CustomFieldGroupGetByIDResponse::Problem
          )
        end

      class CustomFieldGroup < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::CustomFieldGroupGetByIDResponse::CustomFieldGroup,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_predefined

        sig { params(is_predefined: T::Boolean).void }
        attr_writer :is_predefined

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
            is_predefined: T::Boolean,
            name: String,
            sort: Integer
          ).returns(T.attached_class)
        end
        def self.new(id: nil, is_predefined: nil, name: nil, sort: nil)
        end

        sig do
          override.returns(
            {
              id: Integer,
              is_predefined: T::Boolean,
              name: String,
              sort: Integer
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
              Amocrm::Models::CustomFieldGroupGetByIDResponse::Problem,
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
          T::Array[Amocrm::Models::CustomFieldGroupGetByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
