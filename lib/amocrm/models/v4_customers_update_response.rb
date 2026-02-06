# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#customers_update
    module V4CustomersUpdateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse }

      variant -> { Amocrm::Models::V4CustomersUpdateResponse::Problem }

      class CustomerUpdateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute customers
          #
          #   @return [Array<Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse::Embedded::Customer>, nil]
          optional :customers,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse::Embedded::Customer] }

          # @!method initialize(customers: nil)
          #   @param customers [Array<Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse::Embedded::Customer>]

          class Customer < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute updated_at
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!method initialize(id: nil, _links: nil, updated_at: nil)
            #   @param id [Integer]
            #   @param _links [Object]
            #   @param updated_at [Integer]
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
      #   @return [Array(Amocrm::Models::V4CustomersUpdateResponse::CustomerUpdateResponse, Amocrm::Models::V4CustomersUpdateResponse::Problem)]
    end
  end
end
