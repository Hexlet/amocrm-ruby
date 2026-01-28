# typed: strong

module Amocrm
  module Models
    class PetFindByStatusParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::PetFindByStatusParams, Amocrm::Internal::AnyHash)
        end

      # Status values that need to be considered for filter
      sig do
        returns(T.nilable(Amocrm::PetFindByStatusParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Amocrm::PetFindByStatusParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          status: Amocrm::PetFindByStatusParams::Status::OrSymbol,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status values that need to be considered for filter
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Amocrm::PetFindByStatusParams::Status::OrSymbol,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status values that need to be considered for filter
      module Status
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Amocrm::PetFindByStatusParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE =
          T.let(:available, Amocrm::PetFindByStatusParams::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, Amocrm::PetFindByStatusParams::Status::TaggedSymbol)
        SOLD = T.let(:sold, Amocrm::PetFindByStatusParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Amocrm::PetFindByStatusParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
