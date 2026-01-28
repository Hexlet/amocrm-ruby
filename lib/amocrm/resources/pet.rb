# frozen_string_literal: true

module Amocrm
  module Resources
    class Pet
      # Add a new pet to the store
      #
      # @overload create(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param photo_urls [Array<String>]
      #
      # @param id [Integer]
      #
      # @param category [Amocrm::Models::PetAPI::Category]
      #
      # @param status [Symbol, Amocrm::Models::PetAPI::Status] pet status in the store
      #
      # @param tags [Array<Amocrm::Models::PetAPI::Tag>]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PetAPI]
      #
      # @see Amocrm::Models::PetCreateParams
      def create(params)
        parsed, options = Amocrm::PetCreateParams.dump_request(params)
        @client.request(method: :post, path: "pet", body: parsed, model: Amocrm::PetAPI, options: options)
      end

      # Returns a single pet
      #
      # @overload retrieve(pet_id, request_options: {})
      #
      # @param pet_id [Integer] ID of pet to return
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PetAPI]
      #
      # @see Amocrm::Models::PetRetrieveParams
      def retrieve(pet_id, params = {})
        @client.request(
          method: :get,
          path: ["pet/%1$s", pet_id],
          model: Amocrm::PetAPI,
          options: params[:request_options]
        )
      end

      # Update an existing pet by Id
      #
      # @overload update(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param photo_urls [Array<String>]
      #
      # @param id [Integer]
      #
      # @param category [Amocrm::Models::PetAPI::Category]
      #
      # @param status [Symbol, Amocrm::Models::PetAPI::Status] pet status in the store
      #
      # @param tags [Array<Amocrm::Models::PetAPI::Tag>]
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PetAPI]
      #
      # @see Amocrm::Models::PetUpdateParams
      def update(params)
        parsed, options = Amocrm::PetUpdateParams.dump_request(params)
        @client.request(method: :put, path: "pet", body: parsed, model: Amocrm::PetAPI, options: options)
      end

      # delete a pet
      #
      # @overload delete(pet_id, request_options: {})
      #
      # @param pet_id [Integer] Pet id to delete
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Amocrm::Models::PetDeleteParams
      def delete(pet_id, params = {})
        @client.request(
          method: :delete,
          path: ["pet/%1$s", pet_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Multiple status values can be provided with comma separated strings
      #
      # @overload find_by_status(status: nil, request_options: {})
      #
      # @param status [Symbol, Amocrm::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Amocrm::Models::PetAPI>]
      #
      # @see Amocrm::Models::PetFindByStatusParams
      def find_by_status(params = {})
        parsed, options = Amocrm::PetFindByStatusParams.dump_request(params)
        @client.request(
          method: :get,
          path: "pet/findByStatus",
          query: parsed,
          model: Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI],
          options: options
        )
      end

      # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3
      # for testing.
      #
      # @overload find_by_tags(tags: nil, request_options: {})
      #
      # @param tags [Array<String>] Tags to filter by
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Amocrm::Models::PetAPI>]
      #
      # @see Amocrm::Models::PetFindByTagsParams
      def find_by_tags(params = {})
        parsed, options = Amocrm::PetFindByTagsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "pet/findByTags",
          query: parsed,
          model: Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI],
          options: options
        )
      end

      # Updates a pet in the store with form data
      #
      # @overload update_with_form(pet_id, name: nil, status: nil, request_options: {})
      #
      # @param pet_id [Integer] ID of pet that needs to be updated
      #
      # @param name [String] Name of pet that needs to be updated
      #
      # @param status [String] Status of pet that needs to be updated
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Amocrm::Models::PetUpdateWithFormParams
      def update_with_form(pet_id, params = {})
        parsed, options = Amocrm::PetUpdateWithFormParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["pet/%1$s", pet_id],
          query: parsed,
          model: NilClass,
          options: options
        )
      end

      # uploads an image
      #
      # @overload upload_image(pet_id, body:, additional_metadata: nil, request_options: {})
      #
      # @param pet_id [Integer] Path param: ID of pet to update
      #
      # @param body [Pathname, StringIO, IO, String, Amocrm::FilePart] Body param
      #
      # @param additional_metadata [String] Query param: Additional Metadata
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Amocrm::Models::PetUploadImageResponse]
      #
      # @see Amocrm::Models::PetUploadImageParams
      def upload_image(pet_id, params)
        parsed, options = Amocrm::PetUploadImageParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["pet/%1$s/uploadImage", pet_id],
          query: parsed.except(:body).transform_keys(additional_metadata: "additionalMetadata"),
          headers: {"content-type" => "application/octet-stream"},
          body: parsed[:body],
          model: Amocrm::Models::PetUploadImageResponse,
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
