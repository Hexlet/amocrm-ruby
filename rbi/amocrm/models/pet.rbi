# typed: strong

module Amocrm
  module Models
    class PetAPI < Amocrm::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Amocrm::PetAPI, Amocrm::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[String]) }
      attr_accessor :photo_urls

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(Amocrm::PetAPI::Category)) }
      attr_reader :category

      sig { params(category: Amocrm::PetAPI::Category::OrHash).void }
      attr_writer :category

      # pet status in the store
      sig { returns(T.nilable(Amocrm::PetAPI::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Amocrm::PetAPI::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(T::Array[Amocrm::PetAPI::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[Amocrm::PetAPI::Tag::OrHash]).void }
      attr_writer :tags

      sig do
        params(
          name: String,
          photo_urls: T::Array[String],
          id: Integer,
          category: Amocrm::PetAPI::Category::OrHash,
          status: Amocrm::PetAPI::Status::OrSymbol,
          tags: T::Array[Amocrm::PetAPI::Tag::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        photo_urls:,
        id: nil,
        category: nil,
        # pet status in the store
        status: nil,
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            photo_urls: T::Array[String],
            id: Integer,
            category: Amocrm::PetAPI::Category,
            status: Amocrm::PetAPI::Status::TaggedSymbol,
            tags: T::Array[Amocrm::PetAPI::Tag]
          }
        )
      end
      def to_hash
      end

      class Category < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::PetAPI::Category, Amocrm::Internal::AnyHash)
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: Integer, name: String).returns(T.attached_class) }
        def self.new(id: nil, name: nil)
        end

        sig { override.returns({ id: Integer, name: String }) }
        def to_hash
        end
      end

      # pet status in the store
      module Status
        extend Amocrm::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Amocrm::PetAPI::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE = T.let(:available, Amocrm::PetAPI::Status::TaggedSymbol)
        PENDING = T.let(:pending, Amocrm::PetAPI::Status::TaggedSymbol)
        SOLD = T.let(:sold, Amocrm::PetAPI::Status::TaggedSymbol)

        sig { override.returns(T::Array[Amocrm::PetAPI::Status::TaggedSymbol]) }
        def self.values
        end
      end

      class Tag < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Amocrm::PetAPI::Tag, Amocrm::Internal::AnyHash) }

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: Integer, name: String).returns(T.attached_class) }
        def self.new(id: nil, name: nil)
        end

        sig { override.returns({ id: Integer, name: String }) }
        def to_hash
        end
      end
    end
  end
end
