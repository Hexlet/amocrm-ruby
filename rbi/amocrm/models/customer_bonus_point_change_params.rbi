# typed: strong

module Amocrm
  module Models
    class CustomerBonusPointChangeParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::CustomerBonusPointChangeParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :customer_id

      sig do
        returns(
          T.any(
            Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn,
            Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          customer_id: Integer,
          body:
            T.any(
              Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn::OrHash,
              Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem::OrHash
            ),
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(customer_id:, body:, request_options: {})
      end

      sig do
        override.returns(
          {
            customer_id: Integer,
            body:
              T.any(
                Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn,
                Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem
              ),
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Body
        extend Amocrm::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn,
              Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem
            )
          end

        class CustomerBonusPointsEarn < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsEarn,
                Amocrm::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :earn

          sig { params(earn: Integer).returns(T.attached_class) }
          def self.new(earn:)
          end

          sig { override.returns({ earn: Integer }) }
          def to_hash
          end
        end

        class CustomerBonusPointsRedeem < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::CustomerBonusPointChangeParams::Body::CustomerBonusPointsRedeem,
                Amocrm::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :redeem

          sig { params(redeem: Integer).returns(T.attached_class) }
          def self.new(redeem:)
          end

          sig { override.returns({ redeem: Integer }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Amocrm::CustomerBonusPointChangeParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
