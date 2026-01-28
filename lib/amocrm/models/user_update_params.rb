# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::User#update
    class UserUpdateParams < Amocrm::Models::UserAPI
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
