# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V2#salesbot_run
    module V2SalesbotRunResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse }

      variant -> { Amocrm::Models::V2SalesbotRunResponse::Problem }

      class SalesbotRunResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _links
        #
        #   @return [Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse::Links, nil]
        optional :_links, -> { Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse::Links }

        # @!attribute success
        #
        #   @return [Boolean, nil]
        optional :success, Amocrm::Internal::Type::Boolean

        # @!method initialize(_links: nil, success: nil)
        #   @param _links [Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse::Links]
        #   @param success [Boolean]

        # @see Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse#_links
        class Links < Amocrm::Internal::Type::BaseModel
          # @!attribute self_
          #
          #   @return [Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse::Links::Self, nil]
          optional :self_,
                   -> { Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse::Links::Self },
                   api_name: :self

          # @!method initialize(self_: nil)
          #   @param self_ [Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse::Links::Self]

          # @see Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse::Links#self_
          class Self < Amocrm::Internal::Type::BaseModel
            # @!attribute href
            #
            #   @return [String, nil]
            optional :href, String

            # @!attribute method_
            #
            #   @return [String, nil]
            optional :method_, String, api_name: :method

            # @!method initialize(href: nil, method_: nil)
            #   @param href [String]
            #   @param method_ [String]
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
      #   @return [Array(Amocrm::Models::V2SalesbotRunResponse::SalesbotRunResponse, Amocrm::Models::V2SalesbotRunResponse::Problem)]
    end
  end
end
