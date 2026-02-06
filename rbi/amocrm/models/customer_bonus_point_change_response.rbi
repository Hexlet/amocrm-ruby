# typed: strong

module Amocrm
  module Models
    module CustomerBonusPointChangeResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::CustomerBonusPointChangeResponse::CustomerBonusPointsResponse,
            Amocrm::Models::CustomerBonusPointChangeResponse::Problem
          )
        end

      class CustomerBonusPointsResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::CustomerBonusPointChangeResponse::CustomerBonusPointsResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :bonus_points

        sig { params(bonus_points: Integer).void }
        attr_writer :bonus_points

        sig { params(bonus_points: Integer).returns(T.attached_class) }
        def self.new(bonus_points: nil)
        end

        sig { override.returns({ bonus_points: Integer }) }
        def to_hash
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::CustomerBonusPointChangeResponse::Problem,
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
          T::Array[Amocrm::Models::CustomerBonusPointChangeResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
