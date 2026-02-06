# typed: strong

module Amocrm
  module Models
    module APISourcesGetByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APISourcesGetByIDResponse::Source,
            Amocrm::Models::APISourcesGetByIDResponse::Problem
          )
        end

      class Source < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APISourcesGetByIDResponse::Source,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :default

        sig { params(default: T::Boolean).void }
        attr_writer :default

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APISourcesGetByIDResponse::Source::ExternalID::Variants
            )
          )
        end
        attr_reader :external_id

        sig do
          params(
            external_id:
              Amocrm::Models::APISourcesGetByIDResponse::Source::ExternalID::Variants
          ).void
        end
        attr_writer :external_id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_accessor :origin_code

        sig { returns(T.nilable(Integer)) }
        attr_accessor :pipeline_id

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APISourcesGetByIDResponse::Source::Services::Variants
            )
          )
        end
        attr_reader :services

        sig do
          params(
            services:
              Amocrm::Models::APISourcesGetByIDResponse::Source::Services::Variants
          ).void
        end
        attr_writer :services

        sig do
          params(
            id: Integer,
            _links: T.anything,
            default: T::Boolean,
            external_id:
              Amocrm::Models::APISourcesGetByIDResponse::Source::ExternalID::Variants,
            name: String,
            origin_code: T.nilable(String),
            pipeline_id: T.nilable(Integer),
            services:
              Amocrm::Models::APISourcesGetByIDResponse::Source::Services::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          _links: nil,
          default: nil,
          external_id: nil,
          name: nil,
          origin_code: nil,
          pipeline_id: nil,
          services: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              _links: T.anything,
              default: T::Boolean,
              external_id:
                Amocrm::Models::APISourcesGetByIDResponse::Source::ExternalID::Variants,
              name: String,
              origin_code: T.nilable(String),
              pipeline_id: T.nilable(Integer),
              services:
                Amocrm::Models::APISourcesGetByIDResponse::Source::Services::Variants
            }
          )
        end
        def to_hash
        end

        module ExternalID
          extend Amocrm::Internal::Type::Union

          Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

          sig do
            override.returns(
              T::Array[
                Amocrm::Models::APISourcesGetByIDResponse::Source::ExternalID::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Services
          extend Amocrm::Internal::Type::Union

          Variants =
            T.type_alias { T.any(T::Array[T.anything], T::Array[String]) }

          sig do
            override.returns(
              T::Array[
                Amocrm::Models::APISourcesGetByIDResponse::Source::Services::Variants
              ]
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

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APISourcesGetByIDResponse::Problem,
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
          T::Array[Amocrm::Models::APISourcesGetByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
