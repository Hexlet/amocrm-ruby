# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#contact_chats_list
    module APIContactChatsListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse }

      variant -> { Amocrm::Models::APIContactChatsListResponse::Problem }

      class ContactChatLinksResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute chats
          #
          #   @return [Array<Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse::Embedded::Chat>, nil]
          optional :chats,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse::Embedded::Chat] }

          # @!method initialize(chats: nil)
          #   @param chats [Array<Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse::Embedded::Chat>]

          class Chat < Amocrm::Internal::Type::BaseModel
            # @!attribute chat_id
            #
            #   @return [String]
            required :chat_id, String

            # @!attribute contact_id
            #
            #   @return [Integer]
            required :contact_id, Integer

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!method initialize(chat_id:, contact_id:, request_id: nil)
            #   @param chat_id [String]
            #   @param contact_id [Integer]
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
      #   @return [Array(Amocrm::Models::APIContactChatsListResponse::ContactChatLinksResponse, Amocrm::Models::APIContactChatsListResponse::Problem)]
    end
  end
end
