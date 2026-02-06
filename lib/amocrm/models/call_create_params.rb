# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Calls#create
    class CallCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::CallCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::CallCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::CallCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute direction
        #
        #   @return [Symbol, String, Amocrm::Models::CallCreateParams::Body::Direction]
        required :direction, union: -> { Amocrm::CallCreateParams::Body::Direction }

        # @!attribute duration
        #
        #   @return [Integer]
        required :duration, Integer

        # @!attribute phone
        #
        #   @return [String]
        required :phone, String

        # @!attribute source
        #
        #   @return [String]
        required :source, String

        # @!attribute call_responsible
        #
        #   @return [String, Integer, nil]
        optional :call_responsible, union: -> { Amocrm::CallCreateParams::Body::CallResponsible }, nil?: true

        # @!attribute call_result
        #
        #   @return [String, nil]
        optional :call_result, String

        # @!attribute call_status
        #
        #   @return [Integer, nil]
        optional :call_status, Integer

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute link
        #
        #   @return [String, nil]
        optional :link, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute responsible_user_id
        #
        #   @return [Integer, nil]
        optional :responsible_user_id, Integer

        # @!attribute uniq
        #
        #   @return [String, nil]
        optional :uniq, String

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!method initialize(direction:, duration:, phone:, source:, call_responsible: nil, call_result: nil, call_status: nil, created_at: nil, created_by: nil, link: nil, request_id: nil, responsible_user_id: nil, uniq: nil, updated_at: nil, updated_by: nil)
        #   @param direction [Symbol, String, Amocrm::Models::CallCreateParams::Body::Direction]
        #   @param duration [Integer]
        #   @param phone [String]
        #   @param source [String]
        #   @param call_responsible [String, Integer, nil]
        #   @param call_result [String]
        #   @param call_status [Integer]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param link [String]
        #   @param request_id [String]
        #   @param responsible_user_id [Integer]
        #   @param uniq [String]
        #   @param updated_at [Integer]
        #   @param updated_by [Integer]

        # @see Amocrm::Models::CallCreateParams::Body#direction
        module Direction
          extend Amocrm::Internal::Type::Union

          variant const: -> { Amocrm::Models::CallCreateParams::Body::Direction::INBOUND }

          variant const: -> { Amocrm::Models::CallCreateParams::Body::Direction::OUTBOUND }

          variant String

          # @!method self.variants
          #   @return [Array(Symbol, String)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Amocrm::CallCreateParams::Body::Direction::TaggedSymbol, String) }
          end

          # @!group

          INBOUND = :inbound
          OUTBOUND = :outbound

          # @!endgroup
        end

        # @see Amocrm::Models::CallCreateParams::Body#call_responsible
        module CallResponsible
          extend Amocrm::Internal::Type::Union

          variant String

          variant Integer

          # @!method self.variants
          #   @return [Array(String, Integer)]
        end
      end
    end
  end
end
