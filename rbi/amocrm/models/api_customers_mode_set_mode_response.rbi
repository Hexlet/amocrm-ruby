# typed: strong

module Amocrm
  module Models
    module APICustomersModeSetModeResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse,
            Amocrm::Models::APICustomersModeSetModeResponse::Problem
          )
        end

      class CustomerModeResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_enabled

        sig { params(is_enabled: T::Boolean).void }
        attr_writer :is_enabled

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode::TaggedSymbol
            )
          )
        end
        attr_reader :mode

        sig do
          params(
            mode:
              Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode::OrSymbol
          ).void
        end
        attr_writer :mode

        sig do
          params(
            is_enabled: T::Boolean,
            mode:
              Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(is_enabled: nil, mode: nil)
        end

        sig do
          override.returns(
            {
              is_enabled: T::Boolean,
              mode:
                Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Mode
          extend Amocrm::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEGMENTS =
            T.let(
              :segments,
              Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode::TaggedSymbol
            )
          PERIODICITY =
            T.let(
              :periodicity,
              Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Amocrm::Models::APICustomersModeSetModeResponse::CustomerModeResponse::Mode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICustomersModeSetModeResponse::Problem,
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
          T::Array[Amocrm::Models::APICustomersModeSetModeResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
