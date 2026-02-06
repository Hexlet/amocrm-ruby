# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Contacts#create
    module ContactCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::ContactCreateResponse::ContactCreateResponse }

      variant -> { Amocrm::Models::ContactCreateResponse::Problem }

      class ContactCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::ContactCreateResponse::ContactCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::ContactCreateResponse::ContactCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::ContactCreateResponse::ContactCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::ContactCreateResponse::ContactCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute contacts
          #
          #   @return [Array<Amocrm::Models::ContactCreateResponse::ContactCreateResponse::Embedded::Contact>, nil]
          optional :contacts,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::ContactCreateResponse::ContactCreateResponse::Embedded::Contact] }

          # @!method initialize(contacts: nil)
          #   @param contacts [Array<Amocrm::Models::ContactCreateResponse::ContactCreateResponse::Embedded::Contact>]

          class Contact < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array(Amocrm::Models::ContactCreateResponse::ContactCreateResponse, Amocrm::Models::ContactCreateResponse::Problem)]
    end
  end
end
