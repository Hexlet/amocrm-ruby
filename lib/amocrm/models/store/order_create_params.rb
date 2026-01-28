# frozen_string_literal: true

module Amocrm
  module Models
    module Store
      # @see Amocrm::Resources::Store::Order#create
      class OrderCreateParams < Amocrm::Models::Store::StoreOrder
        extend Amocrm::Internal::Type::RequestParameters::Converter
        include Amocrm::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
