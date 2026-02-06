# typed: strong

module Amocrm
  module Models
    class CustomerStatusListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::CustomerStatusListParams, Amocrm::Internal::AnyHash)
        end

      sig do
        params(request_options: Amocrm::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Amocrm::RequestOptions }) }
      def to_hash
      end
    end
  end
end
