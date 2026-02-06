# frozen_string_literal: true

module Amocrm
  module Resources
    class Events
      # Get events list.
      #
      # @overload list(filter: nil, limit: nil, page: nil, with: nil, request_options: {})
      #
      # @param filter [Object]
      # @param limit [Integer]
      # @param page [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EventListResponse::EventListResponse, Amocrm::Models::EventListResponse::Problem]
      #
      # @see Amocrm::Models::EventListParams
      def list(params = {})
        parsed, options = Amocrm::EventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/events",
          query: parsed,
          model: Amocrm::Models::EventListResponse,
          options: options
        )
      end

      # Get event by id.
      #
      # @overload get_by_id(id, with: nil, request_options: {})
      #
      # @param id [Integer]
      # @param with [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EventGetByIDResponse::Event, Amocrm::Models::EventGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::EventGetByIDParams
      def get_by_id(id, params = {})
        parsed, options = Amocrm::EventGetByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/events/%1$s", id],
          query: parsed,
          model: Amocrm::Models::EventGetByIDResponse,
          options: options
        )
      end

      # Get event types.
      #
      # @overload list_types(language_code: nil, request_options: {})
      #
      # @param language_code [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::EventListTypesResponse::EventTypesResponse, Amocrm::Models::EventListTypesResponse::Problem]
      #
      # @see Amocrm::Models::EventListTypesParams
      def list_types(params = {})
        parsed, options = Amocrm::EventListTypesParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/events/types",
          query: parsed,
          model: Amocrm::Models::EventListTypesResponse,
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
