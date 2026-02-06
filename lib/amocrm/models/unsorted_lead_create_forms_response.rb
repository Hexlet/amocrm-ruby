# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::UnsortedLeads#create_forms
    module UnsortedLeadCreateFormsResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse }

      variant -> { Amocrm::Models::UnsortedLeadCreateFormsResponse::Problem }

      class UnsortedCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded }

        # @!attribute _total_items
        #
        #   @return [Integer, nil]
        optional :_total_items, Integer

        # @!method initialize(_embedded: nil, _total_items: nil)
        #   @param _embedded [Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded]
        #   @param _total_items [Integer]

        # @see Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute unsorted
          #
          #   @return [Array<Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted>, nil]
          optional :unsorted,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted] }

          # @!method initialize(unsorted: nil)
          #   @param unsorted [Array<Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted>]

          class Unsorted < Amocrm::Internal::Type::BaseModel
            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded, nil]
            optional :_embedded,
                     -> { Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded }

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute account_id
            #
            #   @return [Integer, nil]
            optional :account_id, Integer

            # @!attribute request_id
            #   Echoed request id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!attribute uid
            #
            #   @return [String, nil]
            optional :uid, String

            # @!method initialize(_embedded: nil, _links: nil, account_id: nil, request_id: nil, uid: nil)
            #   @param _embedded [Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded]
            #
            #   @param _links [Object]
            #
            #   @param account_id [Integer]
            #
            #   @param request_id [String] Echoed request id
            #
            #   @param uid [String]

            # @see Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute companies
              #
              #   @return [Array<Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Company>, nil]
              optional :companies,
                       -> do
                         Amocrm::Internal::Type::ArrayOf[
                           Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Company
                         ]
                       end

              # @!attribute contacts
              #
              #   @return [Array<Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Contact>, nil]
              optional :contacts,
                       -> do
                         Amocrm::Internal::Type::ArrayOf[
                           Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Contact
                         ]
                       end

              # @!attribute leads
              #
              #   @return [Array<Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Lead>, nil]
              optional :leads,
                       -> do
                         Amocrm::Internal::Type::ArrayOf[
                           Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Lead
                         ]
                       end

              # @!method initialize(companies: nil, contacts: nil, leads: nil)
              #   @param companies [Array<Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Company>]
              #   @param contacts [Array<Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Contact>]
              #   @param leads [Array<Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Lead>]

              class Company < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute _links
                #
                #   @return [Object, nil]
                optional :_links, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, _links: nil)
                #   @param id [Integer]
                #   @param _links [Object]
              end

              class Contact < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute _links
                #
                #   @return [Object, nil]
                optional :_links, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, _links: nil)
                #   @param id [Integer]
                #   @param _links [Object]
              end

              class Lead < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute _links
                #
                #   @return [Object, nil]
                optional :_links, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, _links: nil)
                #   @param id [Integer]
                #   @param _links [Object]
              end
            end
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
      #   @return [Array(Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse, Amocrm::Models::UnsortedLeadCreateFormsResponse::Problem)]
    end
  end
end
