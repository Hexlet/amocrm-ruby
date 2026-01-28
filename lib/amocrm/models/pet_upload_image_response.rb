# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Pet#upload_image
    class PetUploadImageResponse < Amocrm::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [Integer, nil]
      optional :code, Integer

      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute type
      #
      #   @return [String, nil]
      optional :type, String

      # @!method initialize(code: nil, message: nil, type: nil)
      #   @param code [Integer]
      #   @param message [String]
      #   @param type [String]
    end
  end
end
