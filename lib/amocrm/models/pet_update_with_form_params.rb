# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Pet#update_with_form
    class PetUpdateWithFormParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute name
      #   Name of pet that needs to be updated
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute status
      #   Status of pet that needs to be updated
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(name: nil, status: nil, request_options: {})
      #   @param name [String] Name of pet that needs to be updated
      #
      #   @param status [String] Status of pet that needs to be updated
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
