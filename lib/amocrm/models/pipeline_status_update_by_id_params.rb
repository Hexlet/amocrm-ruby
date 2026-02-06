# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::PipelineStatuses#update_by_id
    class PipelineStatusUpdateByIDParams < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array<Amocrm::Models::PipelineStatusUpdateByIDParams::Description>, nil]
      optional :descriptions,
               -> { Amocrm::Internal::Type::ArrayOf[Amocrm::PipelineStatusUpdateByIDParams::Description] }

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
      #   @param descriptions [Array<Amocrm::Models::PipelineStatusUpdateByIDParams::Description>]
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
