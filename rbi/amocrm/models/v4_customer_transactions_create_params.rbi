# typed: strong

module Amocrm
  module Models
    class V4CustomerTransactionsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4CustomerTransactionsCreateParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[Amocrm::V4CustomerTransactionsCreateParams::Body])
      end
      attr_accessor :body

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :accrue_bonus

      sig { params(accrue_bonus: T::Boolean).void }
      attr_writer :accrue_bonus

      sig do
        params(
          body:
            T::Array[Amocrm::V4CustomerTransactionsCreateParams::Body::OrHash],
          accrue_bonus: T::Boolean,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, accrue_bonus: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4CustomerTransactionsCreateParams::Body],
            accrue_bonus: T::Boolean,
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
              Amocrm::V4CustomerTransactionsCreateParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :price

        sig { returns(T.nilable(String)) }
        attr_reader :comment

        sig { params(comment: String).void }
        attr_writer :comment

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by

        sig { params(created_by: Integer).void }
        attr_writer :created_by

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig do
          params(
            price: Integer,
            comment: String,
            created_at: Integer,
            created_by: Integer,
            request_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          price:,
          comment: nil,
          created_at: nil,
          created_by: nil,
          request_id: nil
        )
        end

        sig do
          override.returns(
            {
              price: Integer,
              comment: String,
              created_at: Integer,
              created_by: Integer,
              request_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
