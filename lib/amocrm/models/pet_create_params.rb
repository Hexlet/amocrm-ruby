# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Pet#create
    class PetCreateParams < Amocrm::Models::PetAPI
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
