# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#pipeline_statuses_create
    module APIPipelineStatusesCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse }

      variant -> { Amocrm::Models::APIPipelineStatusesCreateResponse::Problem }

      class StatusCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse::Embedded, nil]
        optional :_embedded,
                 -> { Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute statuses
          #
          #   @return [Array<Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse::Embedded::Status>, nil]
          optional :statuses,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse::Embedded::Status] }

          # @!method initialize(statuses: nil)
          #   @param statuses [Array<Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse::Embedded::Status>]

          class Status < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array(Amocrm::Models::APIPipelineStatusesCreateResponse::StatusCreateResponse, Amocrm::Models::APIPipelineStatusesCreateResponse::Problem)]
    end
  end
end
