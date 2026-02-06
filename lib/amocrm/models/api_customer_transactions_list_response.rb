# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_transactions_list
    module APICustomerTransactionsListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse }

      variant -> { Amocrm::Models::APICustomerTransactionsListResponse::Problem }

      class CustomerTransactionListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _page
        #
        #   @return [Integer, nil]
        optional :_page, Integer

        # @!method initialize(_embedded: nil, _links: nil, _page: nil)
        #   @param _embedded [Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse::Embedded]
        #   @param _links [Object]
        #   @param _page [Integer]

        # @see Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute transactions
          #
          #   @return [Array<Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse::Embedded::Transaction>, nil]
          optional :transactions,
                   -> do
                     Amocrm::Internal::Type::ArrayOf[
                       Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse::Embedded::Transaction
                     ]
                   end

          # @!method initialize(transactions: nil)
          #   @param transactions [Array<Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse::Embedded::Transaction>]

          class Transaction < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute comment
            #
            #   @return [String, nil]
            optional :comment, String

            # @!attribute created_at
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute created_by
            #
            #   @return [Integer, nil]
            optional :created_by, Integer

            # @!attribute customer_id
            #
            #   @return [Integer, nil]
            optional :customer_id, Integer

            # @!attribute price
            #
            #   @return [Integer, nil]
            optional :price, Integer

            # @!method initialize(id: nil, _links: nil, comment: nil, created_at: nil, created_by: nil, customer_id: nil, price: nil)
            #   @param id [Integer]
            #   @param _links [Object]
            #   @param comment [String]
            #   @param created_at [Integer]
            #   @param created_by [Integer]
            #   @param customer_id [Integer]
            #   @param price [Integer]
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(detail: nil, status: nil, title: nil, type: nil)
        #   @param detail [String]
        #   @param status [Integer]
        #   @param title [String]
        #   @param type [String]
      end

      # @!method self.variants
      #   @return [Array(Amocrm::Models::APICustomerTransactionsListResponse::CustomerTransactionListResponse, Amocrm::Models::APICustomerTransactionsListResponse::Problem)]
    end
  end
end
