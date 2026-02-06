# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#pipeline_statuses_create
    class V4PipelineStatusesCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::V4PipelineStatusesCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4PipelineStatusesCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::V4PipelineStatusesCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute descriptions
        #
        #   @return [Array<Amocrm::Models::V4PipelineStatusesCreateParams::Body::Description>, nil]
        optional :descriptions,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4PipelineStatusesCreateParams::Body::Description] }

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!method initialize(name:, color: nil, descriptions: nil, request_id: nil, sort: nil)
        #   @param name [String]
        #   @param color [String]
        #   @param descriptions [Array<Amocrm::Models::V4PipelineStatusesCreateParams::Body::Description>]
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
