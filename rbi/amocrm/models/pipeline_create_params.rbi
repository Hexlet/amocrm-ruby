# typed: strong

module Amocrm
  module Models
    class PipelineCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::PipelineCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::PipelineCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::PipelineCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::PipelineCreateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::PipelineCreateParams::Body, Amocrm::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Amocrm::PipelineCreateParams::Body::Embedded)) }
        attr_reader :_embedded

        sig do
          params(
            _embedded: Amocrm::PipelineCreateParams::Body::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_main

        sig { params(is_main: T::Boolean).void }
        attr_writer :is_main

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_unsorted_on

        sig { params(is_unsorted_on: T::Boolean).void }
        attr_writer :is_unsorted_on

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :sort

        sig { params(sort: Integer).void }
        attr_writer :sort

        sig do
          params(
            name: String,
            _embedded: Amocrm::PipelineCreateParams::Body::Embedded::OrHash,
            is_main: T::Boolean,
            is_unsorted_on: T::Boolean,
            request_id: String,
            sort: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          name:,
          _embedded: nil,
          is_main: nil,
          is_unsorted_on: nil,
          request_id: nil,
          sort: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              _embedded: Amocrm::PipelineCreateParams::Body::Embedded,
              is_main: T::Boolean,
              is_unsorted_on: T::Boolean,
              request_id: String,
              sort: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::PipelineCreateParams::Body::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[Amocrm::PipelineCreateParams::Body::Embedded::Status]
              )
            )
          end
          attr_reader :statuses

          sig do
            params(
              statuses:
                T::Array[
                  Amocrm::PipelineCreateParams::Body::Embedded::Status::OrHash
                ]
            ).void
          end
          attr_writer :statuses

          sig do
            params(
              statuses:
                T::Array[
                  Amocrm::PipelineCreateParams::Body::Embedded::Status::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(statuses: nil)
          end

          sig do
            override.returns(
              {
                statuses:
                  T::Array[Amocrm::PipelineCreateParams::Body::Embedded::Status]
              }
            )
          end
          def to_hash
          end

          class Status < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::PipelineCreateParams::Body::Embedded::Status,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_reader :color

            sig { params(color: String).void }
            attr_writer :color

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Amocrm::PipelineCreateParams::Body::Embedded::Status::Description
                  ]
                )
              )
            end
            attr_reader :descriptions

            sig do
              params(
                descriptions:
                  T::Array[
                    Amocrm::PipelineCreateParams::Body::Embedded::Status::Description::OrHash
                  ]
              ).void
            end
            attr_writer :descriptions

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :sort

            sig { params(sort: Integer).void }
            attr_writer :sort

            sig do
              params(
                name: String,
                color: String,
                descriptions:
                  T::Array[
                    Amocrm::PipelineCreateParams::Body::Embedded::Status::Description::OrHash
                  ],
                request_id: String,
                sort: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              name:,
              color: nil,
              descriptions: nil,
              request_id: nil,
              sort: nil
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  color: String,
                  descriptions:
                    T::Array[
                      Amocrm::PipelineCreateParams::Body::Embedded::Status::Description
                    ],
                  request_id: String,
                  sort: Integer
                }
              )
            end
            def to_hash
            end

            class Description < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::PipelineCreateParams::Body::Embedded::Status::Description,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              sig { returns(T.nilable(String)) }
              attr_reader :level

              sig { params(level: String).void }
              attr_writer :level

              sig do
                params(id: Integer, description: String, level: String).returns(
                  T.attached_class
                )
              end
              def self.new(id: nil, description: nil, level: nil)
              end

              sig do
                override.returns(
                  { id: Integer, description: String, level: String }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
