# frozen_string_literal: true

module Amocrm
  module Resources
    class CustomFieldGroups
      # Create custom field groups.
      #
      # @overload create(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::CustomFieldGroupCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomFieldGroupCreateResponse::CustomFieldGroupCreateResponse, Amocrm::Models::CustomFieldGroupCreateResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldGroupCreateParams
      def create(entity_type, params)
        parsed, options = Amocrm::CustomFieldGroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/custom_fields/groups", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::CustomFieldGroupCreateResponse,
          options: options
        )
      end

      # Get custom field groups list.
      #
      # @overload list(entity_type, limit: nil, page: nil, request_options: {})
      #
      # @param entity_type [String]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomFieldGroupListResponse::CustomFieldGroupListResponse, Amocrm::Models::CustomFieldGroupListResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldGroupListParams
      def list(entity_type, params = {})
        parsed, options = Amocrm::CustomFieldGroupListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/groups", entity_type],
          query: parsed,
          model: Amocrm::Models::CustomFieldGroupListResponse,
          options: options
        )
      end

      # Delete a custom field group by id.
      #
      # @overload delete_by_id(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomFieldGroupDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldGroupDeleteByIDParams
      def delete_by_id(id, params)
        parsed, options = Amocrm::CustomFieldGroupDeleteByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          model: Amocrm::Models::CustomFieldGroupDeleteByIDResponse,
          options: options
        )
      end

      # Get custom field group by id.
      #
      # @overload get_by_id(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomFieldGroupGetByIDResponse::CustomFieldGroup, Amocrm::Models::CustomFieldGroupGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldGroupGetByIDParams
      def get_by_id(id, params)
        parsed, options = Amocrm::CustomFieldGroupGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          model: Amocrm::Models::CustomFieldGroupGetByIDResponse,
          options: options
        )
      end

      # Update a custom field group by id.
      #
      # @overload update_by_id(id, entity_type:, name: nil, sort: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [String] Path param
      #
      # @param name [String] Body param
      #
      # @param sort [Integer] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomFieldGroupUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldGroupUpdateByIDParams
      def update_by_id(id, params)
        parsed, options = Amocrm::CustomFieldGroupUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields/groups/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::CustomFieldGroupUpdateByIDResponse,
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
