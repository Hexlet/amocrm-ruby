# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Talks#get_by_id
    module TalkGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::TalkGetByIDResponse::Talk }

      variant -> { Amocrm::Models::TalkGetByIDResponse::Problem }

      class Talk < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::TalkGetByIDResponse::Talk::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::TalkGetByIDResponse::Talk::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute account_id
        #
        #   @return [Integer, nil]
        optional :account_id, Integer

        # @!attribute chat_id
        #
        #   @return [String, nil]
        optional :chat_id, String

        # @!attribute contact_id
        #
        #   @return [Integer, nil]
        optional :contact_id, Integer

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute entity_id
        #
        #   @return [Integer, nil]
        optional :entity_id, Integer, nil?: true

        # @!attribute entity_type
        #
        #   @return [String, nil]
        optional :entity_type, String, nil?: true

        # @!attribute is_in_work
        #
        #   @return [Boolean, nil]
        optional :is_in_work, Amocrm::Internal::Type::Boolean

        # @!attribute is_read
        #
        #   @return [Boolean, nil]
        optional :is_read, Amocrm::Internal::Type::Boolean

        # @!attribute missed_at
        #
        #   @return [Integer, nil]
        optional :missed_at, Integer, nil?: true

        # @!attribute origin
        #
        #   @return [String, nil]
        optional :origin, String

        # @!attribute rate
        #
        #   @return [Integer, nil]
        optional :rate, Integer

        # @!attribute talk_id
        #
        #   @return [Integer, nil]
        optional :talk_id, Integer

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!method initialize(_embedded: nil, _links: nil, account_id: nil, chat_id: nil, contact_id: nil, created_at: nil, entity_id: nil, entity_type: nil, is_in_work: nil, is_read: nil, missed_at: nil, origin: nil, rate: nil, talk_id: nil, updated_at: nil)
        #   @param _embedded [Amocrm::Models::TalkGetByIDResponse::Talk::Embedded]
        #   @param _links [Object]
        #   @param account_id [Integer]
        #   @param chat_id [String]
        #   @param contact_id [Integer]
        #   @param created_at [Integer]
        #   @param entity_id [Integer, nil]
        #   @param entity_type [String, nil]
        #   @param is_in_work [Boolean]
        #   @param is_read [Boolean]
        #   @param missed_at [Integer, nil]
        #   @param origin [String]
        #   @param rate [Integer]
        #   @param talk_id [Integer]
        #   @param updated_at [Integer]

        # @see Amocrm::Models::TalkGetByIDResponse::Talk#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute contacts
          #
          #   @return [Array<Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Contact>, nil]
          optional :contacts,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Contact] }

          # @!attribute customers
          #
          #   @return [Array<Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Customer>, nil]
          optional :customers,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Customer] }

          # @!attribute leads
          #
          #   @return [Array<Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Lead>, nil]
          optional :leads,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Lead] }

          # @!method initialize(contacts: nil, customers: nil, leads: nil)
          #   @param contacts [Array<Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Contact>]
          #   @param customers [Array<Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Customer>]
          #   @param leads [Array<Amocrm::Models::TalkGetByIDResponse::Talk::Embedded::Lead>]

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

          class Customer < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array(Amocrm::Models::TalkGetByIDResponse::Talk, Amocrm::Models::TalkGetByIDResponse::Problem)]
    end
  end
end
