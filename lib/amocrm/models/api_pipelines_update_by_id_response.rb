# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#pipelines_update_by_id
    module APIPipelinesUpdateByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse }

      variant -> { Amocrm::Models::APIPipelinesUpdateByIDResponse::Problem }

      class PipelineUpdateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute pipelines
          #
          #   @return [Array<Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse::Embedded::Pipeline>, nil]
          optional :pipelines,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse::Embedded::Pipeline] }

          # @!method initialize(pipelines: nil)
          #   @param pipelines [Array<Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse::Embedded::Pipeline>]

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
      #   @return [Array(Amocrm::Models::APIPipelinesUpdateByIDResponse::PipelineUpdateResponse, Amocrm::Models::APIPipelinesUpdateByIDResponse::Problem)]
    end
  end
end
