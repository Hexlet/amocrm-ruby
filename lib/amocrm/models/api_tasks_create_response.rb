# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#tasks_create
    module APITasksCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APITasksCreateResponse::TaskCreateResponse }

      variant -> { Amocrm::Models::APITasksCreateResponse::Problem }

      class TaskCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APITasksCreateResponse::TaskCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APITasksCreateResponse::TaskCreateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APITasksCreateResponse::TaskCreateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APITasksCreateResponse::TaskCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute tasks
          #
          #   @return [Array<Amocrm::Models::APITasksCreateResponse::TaskCreateResponse::Embedded::Task>, nil]
          optional :tasks,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APITasksCreateResponse::TaskCreateResponse::Embedded::Task] }

          # @!method initialize(tasks: nil)
          #   @param tasks [Array<Amocrm::Models::APITasksCreateResponse::TaskCreateResponse::Embedded::Task>]

          class Task < Amocrm::Internal::Type::BaseModel
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
      #   @return [Array(Amocrm::Models::APITasksCreateResponse::TaskCreateResponse, Amocrm::Models::APITasksCreateResponse::Problem)]
    end
  end
end
