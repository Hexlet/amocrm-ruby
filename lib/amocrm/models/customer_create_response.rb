# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Customers#create
    module CustomerCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse }

      variant -> { Amocrm::Models::CustomerCreateResponse::Problem }

      class CustomerCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute customers
          #
          #   @return [Array<Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse::Embedded::Customer>, nil]
          optional :customers,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse::Embedded::Customer] }

          # @!method initialize(customers: nil)
          #   @param customers [Array<Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse::Embedded::Customer>]

          class Customer < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array(Amocrm::Models::CustomerCreateResponse::CustomerCreateResponse, Amocrm::Models::CustomerCreateResponse::Problem)]
    end
  end
end
