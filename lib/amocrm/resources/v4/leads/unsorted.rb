# frozen_string_literal: true

module Amocrm
  module Resources
    class V4
      class Leads
        class Unsorted
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
          # @return [Amocrm::Models::V4::Leads::UnsortedAcceptResponse::UnsortedAcceptResponse, Amocrm::Models::V4::Leads::UnsortedAcceptResponse::Problem]
          #
          # @see Amocrm::Models::V4::Leads::UnsortedAcceptParams
          def accept(uid, params = {})
            parsed, options = Amocrm::V4::Leads::UnsortedAcceptParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v4/leads/unsorted/%1$s/accept", uid],
              body: parsed,
              model: Amocrm::Models::V4::Leads::UnsortedAcceptResponse,
              options: options
            )
          end

          # @overload create_forms(body:, request_options: {})
          #
          # @param body [Array<Amocrm::Models::V4::Leads::UnsortedCreateFormsParams::Body>]
          # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Amocrm::Models::V4::Leads::UnsortedCreateFormsResponse::UnsortedCreateResponse, Amocrm::Models::V4::Leads::UnsortedCreateFormsResponse::Problem]
          #
          # @see Amocrm::Models::V4::Leads::UnsortedCreateFormsParams
          def create_forms(params)
            parsed, options = Amocrm::V4::Leads::UnsortedCreateFormsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v4/leads/unsorted/forms",
              body: parsed[:body],
              model: Amocrm::Models::V4::Leads::UnsortedCreateFormsResponse,
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
          # @return [Amocrm::Models::V4::Leads::UnsortedDeclineResponse::UnsortedAcceptResponse, Amocrm::Models::V4::Leads::UnsortedDeclineResponse::Problem]
          #
          # @see Amocrm::Models::V4::Leads::UnsortedDeclineParams
          def decline(uid, params = {})
            parsed, options = Amocrm::V4::Leads::UnsortedDeclineParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["api/v4/leads/unsorted/%1$s/decline", uid],
              body: parsed,
              model: Amocrm::Models::V4::Leads::UnsortedDeclineResponse,
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
  end
end
