# typed: strong

module Amocrm
  module Models
    class V4SourcesListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4SourcesListParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(Amocrm::V4SourcesListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Amocrm::V4SourcesListParams::Filter::OrHash).void }
      attr_writer :filter

      sig do
        params(
          filter: Amocrm::V4SourcesListParams::Filter::OrHash,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(filter: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            filter: Amocrm::V4SourcesListParams::Filter,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::V4SourcesListParams::Filter,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Amocrm::V4SourcesListParams::Filter::ExternalID::Variants)
          )
        end
        attr_reader :external_id

        sig do
          params(
            external_id:
              Amocrm::V4SourcesListParams::Filter::ExternalID::Variants
          ).void
        end
        attr_writer :external_id

        sig do
          params(
            external_id:
              Amocrm::V4SourcesListParams::Filter::ExternalID::Variants
          ).returns(T.attached_class)
        end
        def self.new(external_id: nil)
        end

        sig do
          override.returns(
            {
              external_id:
                Amocrm::V4SourcesListParams::Filter::ExternalID::Variants
            }
          )
        end
        def to_hash
        end

        module ExternalID
          extend Amocrm::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Integer,
                T::Boolean,
                T::Array[
                  Amocrm::V4SourcesListParams::Filter::ExternalID::UnionMember3::Variants
                ]
              )
            end

          module UnionMember3
            extend Amocrm::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Amocrm::V4SourcesListParams::Filter::ExternalID::UnionMember3::Variants
                ]
              )
            end
            def self.variants
            end
          end

          sig do
            override.returns(
              T::Array[
                Amocrm::V4SourcesListParams::Filter::ExternalID::Variants
              ]
            )
          end
          def self.variants
          end

          UnionMember3Array =
            T.let(
              Amocrm::Internal::Type::ArrayOf[
                union:
                  Amocrm::V4SourcesListParams::Filter::ExternalID::UnionMember3
              ],
              Amocrm::Internal::Type::Converter
            )
        end
      end
    end
  end
end
