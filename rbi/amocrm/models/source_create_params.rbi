# typed: strong

module Amocrm
  module Models
    class SourceCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::SourceCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::SourceCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::SourceCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::SourceCreateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::SourceCreateParams::Body, Amocrm::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :external_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :default

        sig { params(default: T::Boolean).void }
        attr_writer :default

        sig { returns(T.nilable(String)) }
        attr_accessor :origin_code

        sig { returns(T.nilable(Integer)) }
        attr_accessor :pipeline_id

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig do
          returns(
            T.nilable(Amocrm::SourceCreateParams::Body::Services::Variants)
          )
        end
        attr_reader :services

        sig do
          params(
            services: Amocrm::SourceCreateParams::Body::Services::Variants
          ).void
        end
        attr_writer :services

        sig do
          params(
            external_id: String,
            name: String,
            default: T::Boolean,
            origin_code: T.nilable(String),
            pipeline_id: T.nilable(Integer),
            request_id: String,
            services: Amocrm::SourceCreateParams::Body::Services::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          external_id:,
          name:,
          default: nil,
          origin_code: nil,
          pipeline_id: nil,
          request_id: nil,
          services: nil
        )
        end

        sig do
          override.returns(
            {
              external_id: String,
              name: String,
              default: T::Boolean,
              origin_code: T.nilable(String),
              pipeline_id: T.nilable(Integer),
              request_id: String,
              services: Amocrm::SourceCreateParams::Body::Services::Variants
            }
          )
        end
        def to_hash
        end

        module Services
          extend Amocrm::Internal::Type::Union

          Variants =
            T.type_alias { T.any(T::Array[T.anything], T::Array[String]) }

          sig do
            override.returns(
              T::Array[Amocrm::SourceCreateParams::Body::Services::Variants]
            )
          end
          def self.variants
          end

          UnionMember0Array =
            T.let(
              Amocrm::Internal::Type::ArrayOf[Amocrm::Internal::Type::Unknown],
              Amocrm::Internal::Type::Converter
            )

          StringArray =
            T.let(
              Amocrm::Internal::Type::ArrayOf[String],
              Amocrm::Internal::Type::Converter
            )
        end
      end
    end
  end
end
