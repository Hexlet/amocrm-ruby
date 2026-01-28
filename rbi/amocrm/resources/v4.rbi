# typed: strong

module Amocrm
  module Resources
    class V4
      sig { returns(Amocrm::Resources::V4::Leads) }
      attr_reader :leads

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
