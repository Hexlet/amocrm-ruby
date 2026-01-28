# frozen_string_literal: true

module Amocrm
  module Resources
    class V4
      # @return [Amocrm::Resources::V4::Leads]
      attr_reader :leads

      # @api private
      #
      # @param client [Amocrm::Client]
      def initialize(client:)
        @client = client
        @leads = Amocrm::Resources::V4::Leads.new(client: client)
      end
    end
  end
end
