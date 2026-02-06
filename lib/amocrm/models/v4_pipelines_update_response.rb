# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#pipelines_update
    module V4PipelinesUpdateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse }

      variant -> { Amocrm::Models::V4PipelinesUpdateResponse::Problem }

      class PipelineUpdateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute pipelines
          #
          #   @return [Array<Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse::Embedded::Pipeline>, nil]
          optional :pipelines,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse::Embedded::Pipeline] }

          # @!method initialize(pipelines: nil)
          #   @param pipelines [Array<Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse::Embedded::Pipeline>]

          class Pipeline < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!attribute updated_at
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!method initialize(id: nil, _links: nil, request_id: nil, updated_at: nil)
            #   @param id [Integer]
            #   @param _links [Object]
            #   @param request_id [String]
            #   @param updated_at [Integer]
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(detail: nil, status: nil, title: nil, type: nil)
        #   @param detail [String]
        #   @param status [Integer]
        #   @param title [String]
        #   @param type [String]
      end

      # @!method self.variants
      #   @return [Array(Amocrm::Models::V4PipelinesUpdateResponse::PipelineUpdateResponse, Amocrm::Models::V4PipelinesUpdateResponse::Problem)]
    end
  end
end
