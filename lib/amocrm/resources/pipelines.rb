# frozen_string_literal: true

module Amocrm
  module Resources
    class Pipelines
      # Create pipelines.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::PipelineCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineCreateResponse::PipelineCreateResponse, Amocrm::Models::PipelineCreateResponse::Problem]
      #
      # @see Amocrm::Models::PipelineCreateParams
      def create(params)
        parsed, options = Amocrm::PipelineCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/leads/pipelines",
          body: parsed[:body],
          model: Amocrm::Models::PipelineCreateResponse,
          options: options
        )
      end

      # Update pipelines (batch).
      #
      # @overload update(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::PipelineUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineUpdateResponse::PipelineUpdateResponse, Amocrm::Models::PipelineUpdateResponse::Problem]
      #
      # @see Amocrm::Models::PipelineUpdateParams
      def update(params)
        parsed, options = Amocrm::PipelineUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "api/v4/leads/pipelines",
          body: parsed[:body],
          model: Amocrm::Models::PipelineUpdateResponse,
          options: options
        )
      end

      # Get pipelines list.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineListResponse::PipelineListResponse, Amocrm::Models::PipelineListResponse::Problem]
      #
      # @see Amocrm::Models::PipelineListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/leads/pipelines",
          model: Amocrm::Models::PipelineListResponse,
          options: params[:request_options]
        )
      end

      # Delete pipeline by id.
      #
      # @overload delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineDeleteByIDResponse::EmptyResponse, Amocrm::Models::PipelineDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::PipelineDeleteByIDParams
      def delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/leads/pipelines/%1$s", id],
          model: Amocrm::Models::PipelineDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get pipeline by id.
      #
      # @overload get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineGetByIDResponse::Pipeline, Amocrm::Models::PipelineGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::PipelineGetByIDParams
      def get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s", id],
          model: Amocrm::Models::PipelineGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Update pipeline by id.
      #
      # @overload update_by_id(id, is_archive: nil, is_main: nil, is_unsorted_on: nil, name: nil, request_id: nil, sort: nil, request_options: {})
      #
      # @param id [Integer]
      # @param is_archive [Boolean]
      # @param is_main [Boolean]
      # @param is_unsorted_on [Boolean]
      # @param name [String]
      # @param request_id [String]
      # @param sort [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineUpdateByIDResponse::PipelineUpdateResponse, Amocrm::Models::PipelineUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::PipelineUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::PipelineUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s", id],
          body: parsed,
          model: Amocrm::Models::PipelineUpdateByIDResponse,
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
