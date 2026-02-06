# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#leads_create
    module V4LeadsCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse }

      variant -> { Amocrm::Models::V4LeadsCreateResponse::Problem }

      class LeadCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute leads
          #
          #   @return [Array<Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse::Embedded::Lead>, nil]
          optional :leads,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse::Embedded::Lead] }

          # @!method initialize(leads: nil)
          #   @param leads [Array<Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse::Embedded::Lead>]

          class Lead < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array(Amocrm::Models::V4LeadsCreateResponse::LeadCreateResponse, Amocrm::Models::V4LeadsCreateResponse::Problem)]
    end
  end
end
