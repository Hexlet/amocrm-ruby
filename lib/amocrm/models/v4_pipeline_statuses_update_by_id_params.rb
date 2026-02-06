# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#pipeline_statuses_update_by_id
    class V4PipelineStatusesUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute pipeline_id
      #
      #   @return [Integer]
      required :pipeline_id, Integer

      # @!attribute color
      #
      #   @return [String, nil]
      optional :color, String

      # @!attribute descriptions
      #
      #   @return [Array<Amocrm::Models::V4PipelineStatusesUpdateByIDParams::Description>, nil]
      optional :descriptions,
               -> { Amocrm::Internal::Type::ArrayOf[Amocrm::V4PipelineStatusesUpdateByIDParams::Description] }

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

      # @!method initialize(pipeline_id:, color: nil, descriptions: nil, name: nil, request_id: nil, sort: nil, request_options: {})
      #   @param pipeline_id [Integer]
      #   @param color [String]
      #   @param descriptions [Array<Amocrm::Models::V4PipelineStatusesUpdateByIDParams::Description>]
      #   @param name [String]
      #   @param request_id [String]
      #   @param sort [Integer]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

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
