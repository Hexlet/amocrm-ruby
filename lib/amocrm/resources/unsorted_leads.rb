# frozen_string_literal: true

module Amocrm
  module Resources
    class UnsortedLeads
      # @overload accept(uid, status_id: nil, user_id: nil, request_options: {})
      #
      # @param uid [String]
      #
      # @param status_id [Integer] Status id for the created lead
      #
      # @param user_id [Integer] User id on whose behalf the item is accepted
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse, Amocrm::Models::UnsortedLeadAcceptResponse::Problem]
      #
      # @see Amocrm::Models::UnsortedLeadAcceptParams
      def accept(uid, params = {})
        parsed, options = Amocrm::UnsortedLeadAcceptParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/leads/unsorted/%1$s/accept", uid],
          body: parsed,
          model: Amocrm::Models::UnsortedLeadAcceptResponse,
          options: options
        )
      end

      # @overload create_forms(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::UnsortedLeadCreateFormsParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::UnsortedLeadCreateFormsResponse::UnsortedCreateResponse, Amocrm::Models::UnsortedLeadCreateFormsResponse::Problem]
      #
      # @see Amocrm::Models::UnsortedLeadCreateFormsParams
      def create_forms(params)
        parsed, options = Amocrm::UnsortedLeadCreateFormsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/unsorted/forms",
          body: parsed[:body],
          model: Amocrm::Models::UnsortedLeadCreateFormsResponse,
          options: options
        )
      end

      # @overload decline(uid, user_id: nil, request_options: {})
      #
      # @param uid [String]
      #
      # @param user_id [Integer] User id on whose behalf the item is declined
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::UnsortedLeadDeclineResponse::UnsortedAcceptResponse, Amocrm::Models::UnsortedLeadDeclineResponse::Problem]
      #
      # @see Amocrm::Models::UnsortedLeadDeclineParams
      def decline(uid, params = {})
        parsed, options = Amocrm::UnsortedLeadDeclineParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["api/v4/leads/unsorted/%1$s/decline", uid],
          body: parsed,
          model: Amocrm::Models::UnsortedLeadDeclineResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Amocrm::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
