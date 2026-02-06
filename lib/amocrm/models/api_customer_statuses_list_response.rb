# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#customer_statuses_list
    module APICustomerStatusesListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse }

      variant -> { Amocrm::Models::APICustomerStatusesListResponse::Problem }

      class CustomerStatusListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute statuses
          #
          #   @return [Array<Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse::Embedded::Status>, nil]
          optional :statuses,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse::Embedded::Status] }

          # @!method initialize(statuses: nil)
          #   @param statuses [Array<Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse::Embedded::Status>]

          class Status < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute color
            #
            #   @return [String, nil]
            optional :color, String

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute sort
            #
            #   @return [Integer, nil]
            optional :sort, Integer

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(id: nil, color: nil, name: nil, sort: nil, type: nil)
            #   @param id [Integer]
            #   @param color [String]
            #   @param name [String]
            #   @param sort [Integer]
            #   @param type [String]
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
      #   @return [Array(Amocrm::Models::APICustomerStatusesListResponse::CustomerStatusListResponse, Amocrm::Models::APICustomerStatusesListResponse::Problem)]
    end
  end
end
