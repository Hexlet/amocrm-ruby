# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#leads_create_complex
    module APILeadsCreateComplexResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse }

      variant -> { Amocrm::Models::APILeadsCreateComplexResponse::Problem }

      class LeadComplexCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute leads
          #
          #   @return [Array<Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::Lead>, nil]
          optional :leads,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::Lead] }

          # @!method initialize(leads: nil)
          #   @param leads [Array<Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::Lead>]

          class Lead < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute company_id
            #
            #   @return [Integer, nil]
            optional :company_id, Integer

            # @!attribute contact_id
            #
            #   @return [Integer, nil]
            optional :contact_id, Integer

            # @!attribute merged
            #
            #   @return [Boolean, nil]
            optional :merged, Amocrm::Internal::Type::Boolean

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!method initialize(id: nil, company_id: nil, contact_id: nil, merged: nil, request_id: nil)
            #   @param id [Integer]
            #   @param company_id [Integer]
            #   @param contact_id [Integer]
            #   @param merged [Boolean]
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
      #   @return [Array(Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse, Amocrm::Models::APILeadsCreateComplexResponse::Problem)]
    end
  end
end
