# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Pipelines#update
    class PipelineUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::PipelineUpdateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::PipelineUpdateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::PipelineUpdateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute is_archive
        #
        #   @return [Boolean, nil]
        optional :is_archive, Amocrm::Internal::Type::Boolean

        # @!attribute is_main
        #
        #   @return [Boolean, nil]
        optional :is_main, Amocrm::Internal::Type::Boolean

        # @!attribute is_unsorted_on
        #
        #   @return [Boolean, nil]
        optional :is_unsorted_on, Amocrm::Internal::Type::Boolean

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

        # @!method initialize(id:, is_archive: nil, is_main: nil, is_unsorted_on: nil, name: nil, request_id: nil, sort: nil)
        #   @param id [Integer]
        #   @param is_archive [Boolean]
        #   @param is_main [Boolean]
        #   @param is_unsorted_on [Boolean]
        #   @param name [String]
        #   @param request_id [String]
        #   @param sort [Integer]
      end
    end
  end
end
