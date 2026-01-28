# typed: strong

module Amocrm
  module Models
    class PetFindByTagsParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::PetFindByTagsParams, Amocrm::Internal::AnyHash)
        end

      # Tags to filter by
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          tags: T::Array[String],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Tags to filter by
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { tags: T::Array[String], request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
