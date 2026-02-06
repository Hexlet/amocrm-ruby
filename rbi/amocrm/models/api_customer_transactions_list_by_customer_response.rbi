# typed: strong

module Amocrm
  module Models
    module APICustomerTransactionsListByCustomerResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse,
            Amocrm::Models::APICustomerTransactionsListByCustomerResponse::Problem
          )
        end

      class CustomerTransactionListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(Integer)) }
        attr_reader :_page

        sig { params(_page: Integer).void }
        attr_writer :_page

        sig do
          params(
            _embedded:
              Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded::OrHash,
            _links: T.anything,
            _page: Integer
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil, _page: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded,
              _links: T.anything,
              _page: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded::Transaction
                ]
              )
            )
          end
          attr_reader :transactions

          sig do
            params(
              transactions:
                T::Array[
                  Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded::Transaction::OrHash
                ]
            ).void
          end
          attr_writer :transactions

          sig do
            params(
              transactions:
                T::Array[
                  Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded::Transaction::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(transactions: nil)
          end

          sig do
            override.returns(
              {
                transactions:
                  T::Array[
                    Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded::Transaction
                  ]
              }
            )
          end
          def to_hash
          end

          class Transaction < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APICustomerTransactionsListByCustomerResponse::CustomerTransactionListResponse::Embedded::Transaction,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(T.anything)) }
            attr_reader :_links

            sig { params(_links: T.anything).void }
            attr_writer :_links

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

            sig { returns(T.nilable(Integer)) }
            attr_reader :customer_id

            sig { params(customer_id: Integer).void }
            attr_writer :customer_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :price

            sig { params(price: Integer).void }
            attr_writer :price

            sig do
              params(
                id: Integer,
                _links: T.anything,
                comment: String,
                created_at: Integer,
                created_by: Integer,
                customer_id: Integer,
                price: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _links: nil,
              comment: nil,
              created_at: nil,
              created_by: nil,
              customer_id: nil,
              price: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _links: T.anything,
                  comment: String,
                  created_at: Integer,
                  created_by: Integer,
                  customer_id: Integer,
                  price: Integer
                }
              )
            end
            def to_hash
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICustomerTransactionsListByCustomerResponse::Problem,
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
          T::Array[
            Amocrm::Models::APICustomerTransactionsListByCustomerResponse::Variants
          ]
        )
      end
      def self.variants
      end
    end
  end
end
