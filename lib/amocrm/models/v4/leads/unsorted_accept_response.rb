# frozen_string_literal: true

module Amocrm
  module Models
    module V4
      module Leads
        # @see Amocrm::Resources::V4::Leads::Unsorted#accept
        module UnsortedAcceptResponse
          extend Amocrm::Internal::Type::Union

          variant -> { Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse }

          variant -> { Amocrm::Models::V4::Leads::UnsortedAcceptResponse::Problem }

          class UnsortedAcceptResponse < Amocrm::Internal::Type::BaseModel
            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded, nil]
            optional :_embedded,
                     -> { Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded }

            # @!attribute category
            #
            #   @return [Symbol, Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Category, nil]
            optional :category,
                     enum: -> { Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Category }

            # @!attribute created_at
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute pipeline_id
            #
            #   @return [Integer, nil]
            optional :pipeline_id, Integer

            # @!attribute uid
            #
            #   @return [String, nil]
            optional :uid, String

            # @!method initialize(_embedded: nil, category: nil, created_at: nil, pipeline_id: nil, uid: nil)
            #   @param _embedded [Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded]
            #   @param category [Symbol, Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Category]
            #   @param created_at [Integer]
            #   @param pipeline_id [Integer]
            #   @param uid [String]

            # @see Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute companies
              #
              #   @return [Array<Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Company>, nil]
              optional :companies,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Company] }

              # @!attribute contacts
              #
              #   @return [Array<Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Contact>, nil]
              optional :contacts,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Contact] }

              # @!attribute leads
              #
              #   @return [Array<Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Lead>, nil]
              optional :leads,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Lead] }

              # @!method initialize(companies: nil, contacts: nil, leads: nil)
              #   @param companies [Array<Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Company>]
              #   @param contacts [Array<Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Contact>]
              #   @param leads [Array<Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse::Embedded::Lead>]

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

            # @see Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse#category
            module Category
              extend Amocrm::Internal::Type::Enum

              SIP = :sip
              MAIL = :mail
              CHATS = :chats
              FORMS = :forms

              # @!method self.values
              #   @return [Array<Symbol>]
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
          #   @return [Array(Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse, Amocrm::Models::V4::Leads::UnsortedAcceptResponse::Problem)]
        end
      end
    end
  end
end
