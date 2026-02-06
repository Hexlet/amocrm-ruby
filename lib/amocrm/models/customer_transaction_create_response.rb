# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::CustomerTransactions#create
    module CustomerTransactionCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse }

      variant -> { Amocrm::Models::CustomerTransactionCreateResponse::Problem }

      class CustomerTransactionCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute transactions
          #
          #   @return [Array<Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse::Embedded::Transaction>, nil]
          optional :transactions,
                   -> do
                     Amocrm::Internal::Type::ArrayOf[
                       Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse::Embedded::Transaction
                     ]
                   end

          # @!method initialize(transactions: nil)
          #   @param transactions [Array<Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse::Embedded::Transaction>]

          class Transaction < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!method initialize(id: nil, _links: nil, request_id: nil)
            #   @param id [Integer]
            #   @param _links [Object]
            #   @param request_id [String]
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
      #   @return [Array(Amocrm::Models::CustomerTransactionCreateResponse::CustomerTransactionCreateResponse, Amocrm::Models::CustomerTransactionCreateResponse::Problem)]
    end
  end
end
