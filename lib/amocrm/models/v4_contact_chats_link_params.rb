# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#contact_chats_link
    class V4ContactChatsLinkParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::V4ContactChatsLinkParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4ContactChatsLinkParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::V4ContactChatsLinkParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
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
end
