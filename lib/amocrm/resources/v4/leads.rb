# frozen_string_literal: true

module Amocrm
  module Resources
    class V4
      class Leads
        # @return [Amocrm::Resources::V4::Leads::Unsorted]
        attr_reader :unsorted

        # @api private
        #
        # @param client [Amocrm::Client]
        def initialize(client:)
          @client = client
          @unsorted = Amocrm::Resources::V4::Leads::Unsorted.new(client: client)
        end
      end
    end
  end
end
