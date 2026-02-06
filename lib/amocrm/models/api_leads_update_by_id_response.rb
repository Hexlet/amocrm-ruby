# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#leads_update_by_id
    module APILeadsUpdateByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse }

      variant -> { Amocrm::Models::APILeadsUpdateByIDResponse::Problem }

      class LeadUpdateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute leads
          #
          #   @return [Array<Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::Lead>, nil]
          optional :leads,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::Lead] }

          # @!method initialize(leads: nil)
          #   @param leads [Array<Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::Lead>]

          class Lead < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array(Amocrm::Models::APILeadsUpdateByIDResponse::LeadUpdateResponse, Amocrm::Models::APILeadsUpdateByIDResponse::Problem)]
    end
  end
end
