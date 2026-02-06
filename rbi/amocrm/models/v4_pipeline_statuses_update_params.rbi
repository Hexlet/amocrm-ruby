# typed: strong

module Amocrm
  module Models
    class V4PipelineStatusesUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4PipelineStatusesUpdateParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Amocrm::V4PipelineStatusesUpdateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4PipelineStatusesUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4PipelineStatusesUpdateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::V4PipelineStatusesUpdateParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_reader :color

        sig { params(color: String).void }
        attr_writer :color

        sig do
          returns(
            T.nilable(
              T::Array[
                Amocrm::V4PipelineStatusesUpdateParams::Body::Description
              ]
            )
          )
        end
        attr_reader :descriptions

        sig do
          params(
            descriptions:
              T::Array[
                Amocrm::V4PipelineStatusesUpdateParams::Body::Description::OrHash
              ]
          ).void
        end
        attr_writer :descriptions

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

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
            id: Integer,
            color: String,
            descriptions:
              T::Array[
                Amocrm::V4PipelineStatusesUpdateParams::Body::Description::OrHash
              ],
            name: String,
            request_id: String,
            sort: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          color: nil,
          descriptions: nil,
          name: nil,
          request_id: nil,
          sort: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              color: String,
              descriptions:
                T::Array[
                  Amocrm::V4PipelineStatusesUpdateParams::Body::Description
                ],
              name: String,
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
                Amocrm::V4PipelineStatusesUpdateParams::Body::Description,
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
