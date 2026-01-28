# typed: strong

module Amocrm
  module Resources
    class V4
      class Leads
        class Unsorted
          sig do
            params(
              uid: String,
              status_id: Integer,
              user_id: Integer,
              request_options: Amocrm::RequestOptions::OrHash
            ).returns(
              Amocrm::Models::V4::Leads::UnsortedAcceptResponse::Variants
            )
          end
          def accept(
            uid,
            # Status id for the created lead
            status_id: nil,
            # User id on whose behalf the item is accepted
            user_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              body:
                T::Array[
                  Amocrm::V4::Leads::UnsortedCreateFormsParams::Body::OrHash
                ],
              request_options: Amocrm::RequestOptions::OrHash
            ).returns(
              Amocrm::Models::V4::Leads::UnsortedCreateFormsResponse::Variants
            )
          end
          def create_forms(body:, request_options: {})
          end

          sig do
            params(
              uid: String,
              user_id: Integer,
              request_options: Amocrm::RequestOptions::OrHash
            ).returns(
              Amocrm::Models::V4::Leads::UnsortedDeclineResponse::Variants
            )
          end
          def decline(
            uid,
            # User id on whose behalf the item is declined
            user_id: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Amocrm::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
