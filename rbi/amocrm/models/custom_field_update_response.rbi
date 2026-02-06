# typed: strong

module Amocrm
  module Models
    module CustomFieldUpdateResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(T.anything, Amocrm::Models::CustomFieldUpdateResponse::Problem)
        end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::CustomFieldUpdateResponse::Problem,
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
          T::Array[Amocrm::Models::CustomFieldUpdateResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
