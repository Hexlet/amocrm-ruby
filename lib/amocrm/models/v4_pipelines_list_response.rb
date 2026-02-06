# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#pipelines_list
    module V4PipelinesListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4PipelinesListResponse::PipelineListResponse }

      variant -> { Amocrm::Models::V4PipelinesListResponse::Problem }

      class PipelineListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::V4PipelinesListResponse::PipelineListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute pipelines
          #
          #   @return [Array<Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline>, nil]
          optional :pipelines,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline] }

          # @!method initialize(pipelines: nil)
          #   @param pipelines [Array<Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline>]

          class Pipeline < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded, nil]
            optional :_embedded,
                     -> { Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded }

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute account_id
            #
            #   @return [Integer, nil]
            optional :account_id, Integer

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

            # @!attribute sort
            #
            #   @return [Integer, nil]
            optional :sort, Integer

            # @!method initialize(id: nil, _embedded: nil, _links: nil, account_id: nil, is_archive: nil, is_main: nil, is_unsorted_on: nil, name: nil, sort: nil)
            #   @param id [Integer]
            #   @param _embedded [Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded]
            #   @param _links [Object]
            #   @param account_id [Integer]
            #   @param is_archive [Boolean]
            #   @param is_main [Boolean]
            #   @param is_unsorted_on [Boolean]
            #   @param name [String]
            #   @param sort [Integer]

            # @see Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute statuses
              #
              #   @return [Array<Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded::Status>, nil]
              optional :statuses,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded::Status] }

              # @!method initialize(statuses: nil)
              #   @param statuses [Array<Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded::Status>]

              class Status < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute account_id
                #
                #   @return [Integer, nil]
                optional :account_id, Integer

                # @!attribute color
                #
                #   @return [String, nil]
                optional :color, String

                # @!attribute descriptions
                #
                #   @return [Array<Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded::Status::Description>, nil]
                optional :descriptions,
                         -> do
                           Amocrm::Internal::Type::ArrayOf[
                             Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded::Status::Description
                           ]
                         end,
                         nil?: true

                # @!attribute is_editable
                #
                #   @return [Boolean, nil]
                optional :is_editable, Amocrm::Internal::Type::Boolean

                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!attribute pipeline_id
                #
                #   @return [Integer, nil]
                optional :pipeline_id, Integer

                # @!attribute sort
                #
                #   @return [Integer, nil]
                optional :sort, Integer

                # @!attribute type
                #
                #   @return [Integer, nil]
                optional :type, Integer

                # @!method initialize(id: nil, account_id: nil, color: nil, descriptions: nil, is_editable: nil, name: nil, pipeline_id: nil, sort: nil, type: nil)
                #   @param id [Integer]
                #   @param account_id [Integer]
                #   @param color [String]
                #   @param descriptions [Array<Amocrm::Models::V4PipelinesListResponse::PipelineListResponse::Embedded::Pipeline::Embedded::Status::Description>, nil]
                #   @param is_editable [Boolean]
                #   @param name [String]
                #   @param pipeline_id [Integer]
                #   @param sort [Integer]
                #   @param type [Integer]

                class Description < Amocrm::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [Integer, nil]
                  optional :id, Integer

                  # @!attribute account_id
                  #
                  #   @return [Integer, nil]
                  optional :account_id, Integer

                  # @!attribute created_at
                  #
                  #   @return [Integer, nil]
                  optional :created_at, Integer

                  # @!attribute created_by
                  #
                  #   @return [Integer, nil]
                  optional :created_by, Integer

                  # @!attribute description
                  #
                  #   @return [String, nil]
                  optional :description, String

                  # @!attribute level
                  #
                  #   @return [String, nil]
                  optional :level, String

                  # @!attribute pipeline_id
                  #
                  #   @return [Integer, nil]
                  optional :pipeline_id, Integer

                  # @!attribute status_id
                  #
                  #   @return [Integer, nil]
                  optional :status_id, Integer

                  # @!attribute updated_at
                  #
                  #   @return [Integer, nil]
                  optional :updated_at, Integer

                  # @!attribute updated_by
                  #
                  #   @return [Integer, nil]
                  optional :updated_by, Integer

                  # @!method initialize(id: nil, account_id: nil, created_at: nil, created_by: nil, description: nil, level: nil, pipeline_id: nil, status_id: nil, updated_at: nil, updated_by: nil)
                  #   @param id [Integer]
                  #   @param account_id [Integer]
                  #   @param created_at [Integer]
                  #   @param created_by [Integer]
                  #   @param description [String]
                  #   @param level [String]
                  #   @param pipeline_id [Integer]
                  #   @param status_id [Integer]
                  #   @param updated_at [Integer]
                  #   @param updated_by [Integer]
                end
              end
            end
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
      #   @return [Array(Amocrm::Models::V4PipelinesListResponse::PipelineListResponse, Amocrm::Models::V4PipelinesListResponse::Problem)]
    end
  end
end
