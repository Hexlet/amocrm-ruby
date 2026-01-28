# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Pet#upload_image
    class PetUploadImageParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Pathname, StringIO, IO, String, Amocrm::FilePart]
      required :body, Amocrm::Internal::Type::FileInput

      # @!attribute additional_metadata
      #   Additional Metadata
      #
      #   @return [String, nil]
      optional :additional_metadata, String

      # @!method initialize(body:, additional_metadata: nil, request_options: {})
      #   @param body [Pathname, StringIO, IO, String, Amocrm::FilePart]
      #
      #   @param additional_metadata [String] Additional Metadata
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
