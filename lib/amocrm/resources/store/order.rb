# frozen_string_literal: true

module Amocrm
  module Resources
    class Store
      class Order
        # Place a new order in the store
        #
        # @overload create(id: nil, complete: nil, pet_id: nil, quantity: nil, ship_date: nil, status: nil, request_options: {})
        #
        # @param id [Integer]
        #
        # @param complete [Boolean]
        #
        # @param pet_id [Integer]
        #
        # @param quantity [Integer]
        #
        # @param ship_date [Time]
        #
        # @param status [Symbol, Amocrm::Models::Store::StoreOrder::Status] Order Status
        #
        # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Amocrm::Models::Store::StoreOrder]
        #
        # @see Amocrm::Models::Store::OrderCreateParams
        def create(params = {})
          parsed, options = Amocrm::Store::OrderCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "store/order",
            body: parsed,
            model: Amocrm::Store::StoreOrder,
            options: options
          )
        end

        # For valid response try integer IDs with value <= 5 or > 10. Other values will
        # generate exceptions.
        #
        # @overload retrieve(order_id, request_options: {})
        #
        # @param order_id [Integer] ID of order that needs to be fetched
        #
        # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Amocrm::Models::Store::StoreOrder]
        #
        # @see Amocrm::Models::Store::OrderRetrieveParams
        def retrieve(order_id, params = {})
          @client.request(
            method: :get,
            path: ["store/order/%1$s", order_id],
            model: Amocrm::Store::StoreOrder,
            options: params[:request_options]
          )
        end

        # For valid response try integer IDs with value < 1000. Anything above 1000 or
        # nonintegers will generate API errors
        #
        # @overload delete(order_id, request_options: {})
        #
        # @param order_id [Integer] ID of the order that needs to be deleted
        #
        # @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Amocrm::Models::Store::OrderDeleteParams
        def delete(order_id, params = {})
          @client.request(
            method: :delete,
            path: ["store/order/%1$s", order_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Amocrm::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
