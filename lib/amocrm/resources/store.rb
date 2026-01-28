# frozen_string_literal: true

module Amocrm
  module Resources
    class Store
      # @return [Amocrm::Resources::Store::Order]
      attr_reader :order

      # Returns a map of status codes to quantities
      #
      # @overload list_inventory(request_options: {})
      #
      # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Integer}]
      #
      # @see Amocrm::Models::StoreListInventoryParams
      def list_inventory(params = {})
        @client.request(
          method: :get,
          path: "store/inventory",
          model: Amocrm::Internal::Type::HashOf[Integer],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Amocrm::Client]
      def initialize(client:)
        @client = client
        @order = Amocrm::Resources::Store::Order.new(client: client)
      end
    end
  end
end
