# frozen_string_literal: true

module Amocrm
  module Resources
    class CustomFields
      # Create custom fields.
      #
      # @overload create(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::CustomFieldCreateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomFieldCreateResponse::CustomFieldCreateResponse, Amocrm::Models::CustomFieldCreateResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldCreateParams
      def create(entity_type, params)
        parsed, options = Amocrm::CustomFieldCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::CustomFieldCreateResponse,
          options: options
        )
      end

      # Update custom fields (batch).
      #
      # @overload update(entity_type, body:, request_options: {})
      #
      # @param entity_type [String]
      # @param body [Array<Amocrm::Models::CustomFieldUpdateParams::Body>]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomFieldUpdateResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldUpdateParams
      def update(entity_type, params)
        parsed, options = Amocrm::CustomFieldUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          body: parsed[:body],
          model: Amocrm::Models::CustomFieldUpdateResponse,
          options: options
        )
      end

      # Get custom fields list.
      #
      # @overload list(entity_type, limit: nil, page: nil, request_options: {})
      #
      # @param entity_type [String]
      # @param limit [Integer]
      # @param page [Integer]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomFieldListResponse::CustomFieldListResponse, Amocrm::Models::CustomFieldListResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldListParams
      def list(entity_type, params = {})
        parsed, options = Amocrm::CustomFieldListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields", entity_type],
          query: parsed,
          model: Amocrm::Models::CustomFieldListResponse,
          options: options
        )
      end

      # Delete a custom field by id.
      #
      # @overload delete_by_id(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomFieldDeleteByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldDeleteByIDParams
      def delete_by_id(id, params)
        parsed, options = Amocrm::CustomFieldDeleteByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          model: Amocrm::Models::CustomFieldDeleteByIDResponse,
          options: options
        )
      end

      # Get custom field by id.
      #
      # @overload get_by_id(id, entity_type:, request_options: {})
      #
      # @param id [Integer]
      # @param entity_type [String]
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::CustomFieldGetByIDResponse::CustomField, Amocrm::Models::CustomFieldGetByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldGetByIDParams
      def get_by_id(id, params)
        parsed, options = Amocrm::CustomFieldGetByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          model: Amocrm::Models::CustomFieldGetByIDResponse,
          options: options
        )
      end

      # Update a custom field by id.
      #
      # @overload update_by_id(id, entity_type:, code: nil, enums: nil, group_id: nil, is_deletable: nil, is_multiple: nil, is_required: nil, is_visible: nil, name: nil, settings: nil, sort: nil, type: nil, request_options: {})
      #
      # @param id [Integer] Path param
      #
      # @param entity_type [String] Path param
      #
      # @param code [String] Body param
      #
      # @param enums [Array<Object>] Body param
      #
      # @param group_id [Integer] Body param
      #
      # @param is_deletable [Boolean] Body param
      #
      # @param is_multiple [Boolean] Body param
      #
      # @param is_required [Boolean] Body param
      #
      # @param is_visible [Boolean] Body param
      #
      # @param name [String] Body param
      #
      # @param settings [Object] Body param
      #
      # @param sort [Integer] Body param
      #
      # @param type [String] Body param
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, Amocrm::Models::CustomFieldUpdateByIDResponse::Problem]
      #
      # @see Amocrm::Models::CustomFieldUpdateByIDParams
      def update_by_id(id, params)
        parsed, options = Amocrm::CustomFieldUpdateByIDParams.dump_request(params)
        entity_type =
          parsed.delete(:entity_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v4/%1$s/custom_fields/%2$s", entity_type, id],
          body: parsed,
          model: Amocrm::Models::CustomFieldUpdateByIDResponse,
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
