# typed: strong

module Amocrm
  module Resources
    class V4
      class Leads
        sig { returns(Amocrm::Resources::V4::Leads::Unsorted) }
        attr_reader :unsorted

        # @api private
        sig { params(client: Amocrm::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
