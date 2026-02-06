# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#pipelines_create
    module APIPipelinesCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse }

      variant -> { Amocrm::Models::APIPipelinesCreateResponse::Problem }

      class PipelineCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute pipelines
          #
          #   @return [Array<Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse::Embedded::Pipeline>, nil]
          optional :pipelines,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse::Embedded::Pipeline] }

          # @!method initialize(pipelines: nil)
          #   @param pipelines [Array<Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse::Embedded::Pipeline>]

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

            # @!method initialize(id: nil, _links: nil, request_id: nil)
            #   @param id [Integer]
            #   @param _links [Object]
            #   @param request_id [String]
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
      #   @return [Array(Amocrm::Models::APIPipelinesCreateResponse::PipelineCreateResponse, Amocrm::Models::APIPipelinesCreateResponse::Problem)]
    end
  end
end
