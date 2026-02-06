# frozen_string_literal: true

module Amocrm
  module Resources
    class PipelineStatuses
      # Create statuses.
      #
      # @overload create(pipeline_id, body:, request_options: {})
      #
      # @param pipeline_id [Integer]
      # @param body [Array<Amocrm::Models::PipelineStatusCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineStatusCreateResponse::StatusCreateResponse, Amocrm::Models::PipelineStatusCreateResponse::Problem]
      #
      # @see Amocrm::Models::PipelineStatusCreateParams
      def create(pipeline_id, params)
        parsed, options = Amocrm::PipelineStatusCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          body: parsed[:body],
          model: Amocrm::Models::PipelineStatusCreateResponse,
          options: options
        )
      end

      # Update statuses (batch).
      #
      # @overload update(pipeline_id, body:, request_options: {})
      #
      # @param pipeline_id [Integer]
      # @param body [Array<Amocrm::Models::PipelineStatusUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineStatusUpdateResponse::StatusUpdateResponse, Amocrm::Models::PipelineStatusUpdateResponse::Problem]
      #
      # @see Amocrm::Models::PipelineStatusUpdateParams
      def update(pipeline_id, params)
        parsed, options = Amocrm::PipelineStatusUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          body: parsed[:body],
          model: Amocrm::Models::PipelineStatusUpdateResponse,
          options: options
        )
      end

      # Get statuses for a pipeline.
      #
      # @overload list(pipeline_id, with: nil, request_options: {})
      #
      # @param pipeline_id [Integer]
      #
      # @param with [String] Expand related entities; comma-separated values (e.g. descriptions).
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineStatusListResponse::StatusListResponse, Amocrm::Models::PipelineStatusListResponse::Problem]
      #
      # @see Amocrm::Models::PipelineStatusListParams
      def list(pipeline_id, params = {})
        parsed, options = Amocrm::PipelineStatusListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s/statuses", pipeline_id],
          query: parsed,
          model: Amocrm::Models::PipelineStatusListResponse,
          options: options
        )
      end

      # Delete status by id.
      #
      # @overload delete_by_id(id, pipeline_id:, request_options: {})
      #
      # @param id [Integer]
      # @param pipeline_id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineStatusDeleteByIDResponse::EmptyResponse, Amocrm::Models::PipelineStatusDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::PipelineStatusDeleteByIDParams
      def delete_by_id(id, params)
        parsed, options = Amocrm::PipelineStatusDeleteByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          model: Amocrm::Models::PipelineStatusDeleteByIDResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Amocrm::Models::PipelineStatusGetByIDParams} for more details.
      #
      # Get status by id.
      #
      # @overload get_by_id(id, pipeline_id:, with: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param pipeline_id [Integer] Path param
      #
      # @param with [String] Query param: Expand related entities; comma-separated values (e.g. descriptions)
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineStatusGetByIDResponse::Status, Amocrm::Models::PipelineStatusGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::PipelineStatusGetByIDParams
      def get_by_id(id, params)
        parsed, options = Amocrm::PipelineStatusGetByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          query: parsed,
          model: Amocrm::Models::PipelineStatusGetByIDResponse,
          options: options
        )
      end

      # Update status by id.
      #
      # @overload update_by_id(id, pipeline_id:, color: nil, descriptions: nil, name: nil, request_id: nil, sort: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param pipeline_id [Integer] Path param
      #
      # @param color [String] Body param
      #
      # @param descriptions [Array<Amocrm::Models::PipelineStatusUpdateByIDParams::Description>] Body param
      #
      # @param name [String] Body param
      #
      # @param request_id [String] Body param
      #
      # @param sort [Integer] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PipelineStatusUpdateByIDResponse::StatusUpdateResponse, Amocrm::Models::PipelineStatusUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::PipelineStatusUpdateByIDParams
      def update_by_id(id, params)
        parsed, options = Amocrm::PipelineStatusUpdateByIDParams.dump_request(params)
        pipeline_id =
          parsed.delete(:pipeline_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/leads/pipelines/%1$s/statuses/%2$s", pipeline_id, id],
          body: parsed,
          model: Amocrm::Models::PipelineStatusUpdateByIDResponse,
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
