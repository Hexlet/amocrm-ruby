# frozen_string_literal: true

module Amocrm
  module Models
    module Store
      # @see Amocrm::Resources::Store::Order#delete
      class OrderDeleteParams < Amocrm::Internal::Type::BaseModel
        extend Amocrm::Internal::Type::RequestParameters::Converter
        include Amocrm::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
