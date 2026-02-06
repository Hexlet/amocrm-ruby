# typed: strong

module Amocrm
  module Models
    module V4EntityFollowersListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse,
            Amocrm::Models::V4EntityFollowersListResponse::Problem
          )
        end

      class EntityFollowerListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::OrHash
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

        sig { returns(T.nilable(Integer)) }
        attr_reader :_total_items

        sig { params(_total_items: Integer).void }
        attr_writer :_total_items

        sig do
          params(
            _embedded:
              Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::OrHash,
            _links: T.anything,
            _page: Integer,
            _total_items: Integer
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil, _page: nil, _total_items: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded,
              _links: T.anything,
              _page: Integer,
              _total_items: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::Follower
                ]
              )
            )
          end
          attr_reader :followers

          sig do
            params(
              followers:
                T::Array[
                  Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::Follower::OrHash
                ]
            ).void
          end
          attr_writer :followers

          sig do
            params(
              followers:
                T::Array[
                  Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::Follower::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(followers: nil)
          end

          sig do
            override.returns(
              {
                followers:
                  T::Array[
                    Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::Follower
                  ]
              }
            )
          end
          def to_hash
          end

          class Follower < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::V4EntityFollowersListResponse::EntityFollowerListResponse::Embedded::Follower,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_by

            sig { params(created_by: Integer).void }
            attr_writer :created_by

            sig { returns(T.nilable(Integer)) }
            attr_reader :user_id

            sig { params(user_id: Integer).void }
            attr_writer :user_id

            sig do
              params(
                id: Integer,
                created_at: Integer,
                created_by: Integer,
                user_id: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              created_at: nil,
              created_by: nil,
              user_id: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  created_at: Integer,
                  created_by: Integer,
                  user_id: Integer
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
              Amocrm::Models::V4EntityFollowersListResponse::Problem,
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
          T::Array[Amocrm::Models::V4EntityFollowersListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
