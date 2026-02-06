# typed: strong

module Amocrm
  module Models
    module APIEventsListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APIEventsListResponse::EventListResponse,
            Amocrm::Models::APIEventsListResponse::Problem
          )
        end

      class EventListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIEventsListResponse::EventListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(Integer)) }
        attr_reader :_page

        sig { params(_page: Integer).void }
        attr_writer :_page

        sig do
          params(
            _embedded:
              Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::OrHash,
            _links: T.anything,
            _page: Integer
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil, _page: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded,
              _links: T.anything,
              _page: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::Event
                ]
              )
            )
          end
          attr_reader :events

          sig do
            params(
              events:
                T::Array[
                  Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::Event::OrHash
                ]
            ).void
          end
          attr_writer :events

          sig do
            params(
              events:
                T::Array[
                  Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::Event::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(events: nil)
          end

          sig do
            override.returns(
              {
                events:
                  T::Array[
                    Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::Event
                  ]
              }
            )
          end
          def to_hash
          end

          class Event < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIEventsListResponse::EventListResponse::Embedded::Event,
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

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_by

            sig { params(created_by: Integer).void }
            attr_writer :created_by

            sig { returns(T.nilable(Integer)) }
            attr_reader :entity_id

            sig { params(entity_id: Integer).void }
            attr_writer :entity_id

            sig { returns(T.nilable(String)) }
            attr_reader :entity_type

            sig { params(entity_type: String).void }
            attr_writer :entity_type

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig { returns(T.nilable(T.anything)) }
            attr_reader :value_after

            sig { params(value_after: T.anything).void }
            attr_writer :value_after

            sig { returns(T.nilable(T.anything)) }
            attr_reader :value_before

            sig { params(value_before: T.anything).void }
            attr_writer :value_before

            sig do
              params(
                id: Integer,
                _links: T.anything,
                created_at: Integer,
                created_by: Integer,
                entity_id: Integer,
                entity_type: String,
                type: String,
                value_after: T.anything,
                value_before: T.anything
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _links: nil,
              created_at: nil,
              created_by: nil,
              entity_id: nil,
              entity_type: nil,
              type: nil,
              value_after: nil,
              value_before: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _links: T.anything,
                  created_at: Integer,
                  created_by: Integer,
                  entity_id: Integer,
                  entity_type: String,
                  type: String,
                  value_after: T.anything,
                  value_before: T.anything
                }
              )
            end
            def to_hash
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIEventsListResponse::Problem,
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
          T::Array[Amocrm::Models::APIEventsListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
