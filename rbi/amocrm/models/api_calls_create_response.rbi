# typed: strong

module Amocrm
  module Models
    module APICallsCreateResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICallsCreateResponse::CallCreateResponse,
            Amocrm::Models::APICallsCreateResponse::Problem
          )
        end

      class CallCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICallsCreateResponse::CallCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(Integer)) }
        attr_reader :_total_items

        sig { params(_total_items: Integer).void }
        attr_writer :_total_items

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :errors

        sig { params(errors: T::Array[T.anything]).void }
        attr_writer :errors

        sig do
          params(
            _embedded:
              Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::OrHash,
            _total_items: Integer,
            errors: T::Array[T.anything]
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _total_items: nil, errors: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded,
              _total_items: Integer,
              errors: T::Array[T.anything]
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call
                ]
              )
            )
          end
          attr_reader :calls

          sig do
            params(
              calls:
                T::Array[
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::OrHash
                ]
            ).void
          end
          attr_writer :calls

          sig do
            params(
              calls:
                T::Array[
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(calls: nil)
          end

          sig do
            override.returns(
              {
                calls:
                  T::Array[
                    Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call
                  ]
              }
            )
          end
          def to_hash
          end

          class Call < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig do
              returns(
                T.nilable(
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded
                )
              )
            end
            attr_reader :_embedded

            sig do
              params(
                _embedded:
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded::OrHash
              ).void
            end
            attr_writer :_embedded

            sig { returns(T.nilable(Integer)) }
            attr_reader :account_id

            sig { params(account_id: Integer).void }
            attr_writer :account_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :entity_id

            sig { params(entity_id: Integer).void }
            attr_writer :entity_id

            sig do
              returns(
                T.nilable(
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::EntityType::Variants
                )
              )
            end
            attr_reader :entity_type

            sig do
              params(
                entity_type:
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::EntityType::Variants
              ).void
            end
            attr_writer :entity_type

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig do
              params(
                id: Integer,
                _embedded:
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded::OrHash,
                account_id: Integer,
                entity_id: Integer,
                entity_type:
                  Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::EntityType::Variants,
                request_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _embedded: nil,
              account_id: nil,
              entity_id: nil,
              entity_type: nil,
              request_id: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _embedded:
                    Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded,
                  account_id: Integer,
                  entity_id: Integer,
                  entity_type:
                    Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::EntityType::Variants,
                  request_id: String
                }
              )
            end
            def to_hash
            end

            class Embedded < Amocrm::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded::Entity
                  )
                )
              end
              attr_reader :entity

              sig do
                params(
                  entity:
                    Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded::Entity::OrHash
                ).void
              end
              attr_writer :entity

              sig do
                params(
                  entity:
                    Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded::Entity::OrHash
                ).returns(T.attached_class)
              end
              def self.new(entity: nil)
              end

              sig do
                override.returns(
                  {
                    entity:
                      Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded::Entity
                  }
                )
              end
              def to_hash
              end

              class Entity < Amocrm::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::Embedded::Entity,
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

                sig do
                  params(id: Integer, _links: T.anything).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, _links: nil)
                end

                sig { override.returns({ id: Integer, _links: T.anything }) }
                def to_hash
                end
              end
            end

            module EntityType
              extend Amocrm::Internal::Type::Union

              Variants = T.type_alias { T.any(String, Integer) }

              sig do
                override.returns(
                  T::Array[
                    Amocrm::Models::APICallsCreateResponse::CallCreateResponse::Embedded::Call::EntityType::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICallsCreateResponse::Problem,
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
          T::Array[Amocrm::Models::APICallsCreateResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
