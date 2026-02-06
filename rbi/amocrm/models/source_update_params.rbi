# typed: strong

module Amocrm
  module Models
    class SourceUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::SourceUpdateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::SourceUpdateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::SourceUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::SourceUpdateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::SourceUpdateParams::Body, Amocrm::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :default

        sig { params(default: T::Boolean).void }
        attr_writer :default

        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

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
            T.nilable(Amocrm::SourceUpdateParams::Body::Services::Variants)
          )
        end
        attr_reader :services

        sig do
          params(
            services: Amocrm::SourceUpdateParams::Body::Services::Variants
          ).void
        end
        attr_writer :services

        sig do
          params(
            id: Integer,
            default: T::Boolean,
            external_id: String,
            name: String,
            origin_code: T.nilable(String),
            pipeline_id: T.nilable(Integer),
            request_id: String,
            services: Amocrm::SourceUpdateParams::Body::Services::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          default: nil,
          external_id: nil,
          name: nil,
          origin_code: nil,
          pipeline_id: nil,
          request_id: nil,
          services: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              default: T::Boolean,
              external_id: String,
              name: String,
              origin_code: T.nilable(String),
              pipeline_id: T.nilable(Integer),
              request_id: String,
              services: Amocrm::SourceUpdateParams::Body::Services::Variants
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
              T::Array[Amocrm::SourceUpdateParams::Body::Services::Variants]
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
