# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#roles_delete_by_id
    module APIRolesDeleteByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIRolesDeleteByIDResponse::EmptyResponse }

      variant -> { Amocrm::Models::APIRolesDeleteByIDResponse::Problem }

      class EmptyResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Object, nil]
        optional :_embedded, Amocrm::Internal::Type::Unknown

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Object]
        #   @param _links [Object]
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
      #   @return [Array(Amocrm::Models::APIRolesDeleteByIDResponse::EmptyResponse, Amocrm::Models::APIRolesDeleteByIDResponse::Problem)]
    end
  end
end
