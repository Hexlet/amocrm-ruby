# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::PipelineStatuses#update
    class PipelineStatusUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::PipelineStatusUpdateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::PipelineStatusUpdateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::PipelineStatusUpdateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute descriptions
        #
        #   @return [Array<Amocrm::Models::PipelineStatusUpdateParams::Body::Description>, nil]
        optional :descriptions,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::PipelineStatusUpdateParams::Body::Description] }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!method initialize(id:, color: nil, descriptions: nil, name: nil, request_id: nil, sort: nil)
        #   @param id [Integer]
        #   @param color [String]
        #   @param descriptions [Array<Amocrm::Models::PipelineStatusUpdateParams::Body::Description>]
        #   @param name [String]
        #   @param request_id [String]
        #   @param sort [Integer]

        class Description < Amocrm::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute level
          #
          #   @return [String, nil]
          optional :level, String

          # @!method initialize(id: nil, description: nil, level: nil)
          #   @param id [Integer]
          #   @param description [String]
          #   @param level [String]
        end
      end
    end
  end
end
