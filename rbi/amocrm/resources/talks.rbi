# typed: strong

module Amocrm
  module Resources
    class Talks
      # Close talk by id (optionally force without NPS bot).
      sig do
        params(
          id: Integer,
          force_close: T::Boolean,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TalkCloseResponse::Variants)
      end
      def close(
        id,
        # Force close talk without NPS bot.
        force_close: nil,
        request_options: {}
      )
      end

      # Get talk by id.
      sig do
        params(
          id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(Amocrm::Models::TalkGetByIDResponse::Variants)
      end
      def get_by_id(id, request_options: {})
      end

      # @api private
      sig { params(client: Amocrm::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
