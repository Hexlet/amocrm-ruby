# frozen_string_literal: true

module Amocrm
  module Resources
    class CustomerSegments
      # Create segments.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Array<Amocrm::Models::CustomerSegmentCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerSegmentCreateResponse::CustomerSegmentCreateResponse, Amocrm::Models::CustomerSegmentCreateResponse::Problem]
      #
      # @see Amocrm::Models::CustomerSegmentCreateParams
      def create(params)
        parsed, options = Amocrm::CustomerSegmentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v4/customers/segments",
          body: parsed[:body],
          model: Amocrm::Models::CustomerSegmentCreateResponse,
          options: options
        )
      end

      # Get segments list.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerSegmentListResponse::CustomerSegmentListResponse, Amocrm::Models::CustomerSegmentListResponse::Problem]
      #
      # @see Amocrm::Models::CustomerSegmentListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/v4/customers/segments",
          model: Amocrm::Models::CustomerSegmentListResponse,
          options: params[:request_options]
        )
      end

      # Delete a segment by id.
      #
      # @overload delete_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomerSegmentDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerSegmentDeleteByIDParams
      def delete_by_id(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v4/customers/segments/%1$s", id],
          model: Amocrm::Models::CustomerSegmentDeleteByIDResponse,
          options: params[:request_options]
        )
      end

      # Get segment by id.
      #
      # @overload get_by_id(id, request_options: {})
      #
      # @param id [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomerSegmentGetByIDResponse::CustomerSegment, Amocrm::Models::CustomerSegmentGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerSegmentGetByIDParams
      def get_by_id(id, params = {})
        @client.request(
          method: :get,
          path: ["api/v4/customers/segments/%1$s", id],
          model: Amocrm::Models::CustomerSegmentGetByIDResponse,
          options: params[:request_options]
        )
      end

      # Update a segment by id.
      #
      # @overload update_by_id(id, color: nil, custom_fields_values: nil, name: nil, request_options: {})
      #
      # @param id [Integer]
      # @param color [String]
      # @param custom_fields_values [Array<Amocrm::Models::CustomerSegmentUpdateByIDParams::CustomFieldsValue>]
      # @param name [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomerSegmentUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomerSegmentUpdateByIDParams
      def update_by_id(id, params = {})
        parsed, options = Amocrm::CustomerSegmentUpdateByIDParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/customers/segments/%1$s", id],
          body: parsed,
          model: Amocrm::Models::CustomerSegmentUpdateByIDResponse,
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
