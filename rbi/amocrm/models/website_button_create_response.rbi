# typed: strong

module Amocrm
  module Models
    module WebsiteButtonCreateResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::WebsiteButtonCreateResponse::WebsiteButtonCreateResponse,
            Amocrm::Models::WebsiteButtonCreateResponse::Problem
          )
        end

      class WebsiteButtonCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::WebsiteButtonCreateResponse::WebsiteButtonCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :source_id

        sig { params(source_id: Integer).void }
        attr_writer :source_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :trusted_websites

        sig { params(trusted_websites: T::Array[String]).void }
        attr_writer :trusted_websites

        sig do
          params(
            source_id: Integer,
            trusted_websites: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(source_id: nil, trusted_websites: nil)
        end

        sig do
          override.returns(
            { source_id: Integer, trusted_websites: T::Array[String] }
          )
        end
        def to_hash
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::WebsiteButtonCreateResponse::Problem,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :detail

        sig { params(detail: String).void }
        attr_writer :detail

        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            detail: String,
            status: Integer,
            title: String,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(detail: nil, status: nil, title: nil, type: nil)
        end

        sig do
          override.returns(
            { detail: String, status: Integer, title: String, type: String }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Amocrm::Models::WebsiteButtonCreateResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
