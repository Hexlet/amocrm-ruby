# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#contact_chats_list
    class V4ContactChatsListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute filter
      #
      #   @return [Object, nil]
      optional :filter, Amocrm::Internal::Type::Unknown

      # @!method initialize(filter: nil, request_options: {})
      #   @param filter [Object]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
