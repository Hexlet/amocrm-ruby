# frozen_string_literal: true

module Amocrm
  module Resources
    class Sources
      # Create sources (batch).
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::SourceCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::SourceCreateResponse::SourceCreateResponse, Amocrm::Models::SourceCreateResponse::Problem]
      #
      # @see Amocrm::Models::SourceCreateParams
      def create(params)
        parsed, options = Amocrm::SourceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::SourceCreateResponse,
          options: options
        )
      end

      # Update sources (batch).
      #
      # @overload update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::SourceUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::SourceUpdateResponse::SourceUpdateResponse, Amocrm::Models::SourceUpdateResponse::Problem]
      #
      # @see Amocrm::Models::SourceUpdateParams
      def update(params)
        parsed, options = Amocrm::SourceUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::SourceUpdateResponse,
          options: options
        )
      end

      # Get sources list.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Amocrm::Models::SourceListParams::Filter]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::SourceListResponse::SourceListResponse, Amocrm::Models::SourceListResponse::Problem]
      #
      # @see Amocrm::Models::SourceListParams
      def list(params = {})
        parsed, options = Amocrm::SourceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/v4/sources",
          query: parsed,
          model: Amocrm::Models::SourceListResponse,
          options: options
        )
      end

      # Delete sources (batch).
      #
      # @overload delete(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::SourceDeleteParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::SourceDeleteResponse::EmptyResponse, Amocrm::Models::SourceDeleteResponse::Problem]
      #
      # @see Amocrm::Models::SourceDeleteParams
      def delete(params)
        parsed, options = Amocrm::SourceDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "api/v4/sources",
          body: parsed[:body],
          model: Amocrm::Models::SourceDeleteResponse,
          options: options
        )
      end

      # Delete source by id.
      #
      # @overload delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::SourceDeleteByIDResponse::EmptyResponse, Amocrm::Models::SourceDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::SourceDeleteByIDParams
      def delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/sources/%1$s", id],
          model: Amocrm::Models::SourceDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get source by id.
      #
      # @overload get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::SourceGetByIDResponse::Source, Amocrm::Models::SourceGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::SourceGetByIDParams
      def get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/sources/%1$s", id],
          model: Amocrm::Models::SourceGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Update source by id.
      #
      # @overload update_by_id(id, default: nil, external_id: nil, name: nil, origin_code: nil, pipeline_id: nil, request_id: nil, services: nil, request_options: {})
      #
      # @param id [Integer]
      # @param default [Boolean]
      # @param external_id [String]
      # @param name [String]
      # @param origin_code [String, nil]
      # @param pipeline_id [Integer, nil]
      # @param request_id [String]
      # @param services [Array<Object>, Array<String>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::SourceUpdateByIDResponse::SourceUpdateResponse, Amocrm::Models::SourceUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::SourceUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::SourceUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/sources/%1$s", id],
          body: parsed,
          model: Amocrm::Models::SourceUpdateByIDResponse,
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
