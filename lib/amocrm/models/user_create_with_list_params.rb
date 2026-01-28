# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::User#create_with_list
    class UserCreateWithListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::UserAPI>, nil]
      optional :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::UserAPI] }

      # @!method initialize(body: nil, request_options: {})
      #   @param body [Array<Amocrm::Models::UserAPI>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
