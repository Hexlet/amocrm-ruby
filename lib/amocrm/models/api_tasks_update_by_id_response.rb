# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#tasks_update_by_id
    module APITasksUpdateByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse }

      variant -> { Amocrm::Models::APITasksUpdateByIDResponse::Problem }

      class TaskUpdateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!method initialize(_embedded: nil, _links: nil)
        #   @param _embedded [Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse::Embedded]
        #   @param _links [Object]

        # @see Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute tasks
          #
          #   @return [Array<Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse::Embedded::Task>, nil]
          optional :tasks,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse::Embedded::Task] }

          # @!method initialize(tasks: nil)
          #   @param tasks [Array<Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse::Embedded::Task>]

          class Task < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute updated_at
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!method initialize(id: nil, _links: nil, updated_at: nil)
            #   @param id [Integer]
            #   @param _links [Object]
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
      #   @return [Array(Amocrm::Models::APITasksUpdateByIDResponse::TaskUpdateResponse, Amocrm::Models::APITasksUpdateByIDResponse::Problem)]
    end
  end
end
