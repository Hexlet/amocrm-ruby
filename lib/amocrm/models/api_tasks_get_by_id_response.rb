# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#tasks_get_by_id
    module APITasksGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APITasksGetByIDResponse::Task }

      variant -> { Amocrm::Models::APITasksGetByIDResponse::Problem }

      class Task < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute account_id
        #
        #   @return [Integer, nil]
        optional :account_id, Integer

        # @!attribute complete_till
        #
        #   @return [Integer, nil]
        optional :complete_till, Integer

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute duration
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute entity_id
        #
        #   @return [Integer, nil]
        optional :entity_id, Integer

        # @!attribute entity_type
        #
        #   @return [String, nil]
        optional :entity_type, String

        # @!attribute group_id
        #
        #   @return [Integer, nil]
        optional :group_id, Integer

        # @!attribute is_completed
        #
        #   @return [Boolean, nil]
        optional :is_completed, Amocrm::Internal::Type::Boolean

        # @!attribute responsible_user_id
        #
        #   @return [Integer, nil]
        optional :responsible_user_id, Integer

        # @!attribute result
        #
        #   @return [Amocrm::Models::APITasksGetByIDResponse::Task::Result::Text, Object, nil]
        optional :result, union: -> { Amocrm::Models::APITasksGetByIDResponse::Task::Result }

        # @!attribute task_type_id
        #
        #   @return [Integer, nil]
        optional :task_type_id, Integer

        # @!attribute text
        #
        #   @return [String, nil]
        optional :text, String

        # @!attribute updated_at
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!method initialize(id: nil, _links: nil, account_id: nil, complete_till: nil, created_at: nil, created_by: nil, duration: nil, entity_id: nil, entity_type: nil, group_id: nil, is_completed: nil, responsible_user_id: nil, result: nil, task_type_id: nil, text: nil, updated_at: nil, updated_by: nil)
        #   @param id [Integer]
        #   @param _links [Object]
        #   @param account_id [Integer]
        #   @param complete_till [Integer]
        #   @param created_at [Integer]
        #   @param created_by [Integer]
        #   @param duration [Integer]
        #   @param entity_id [Integer]
        #   @param entity_type [String]
        #   @param group_id [Integer]
        #   @param is_completed [Boolean]
        #   @param responsible_user_id [Integer]
        #   @param result [Amocrm::Models::APITasksGetByIDResponse::Task::Result::Text, Object]
        #   @param task_type_id [Integer]
        #   @param text [String]
        #   @param updated_at [Integer]
        #   @param updated_by [Integer]

        # @see Amocrm::Models::APITasksGetByIDResponse::Task#result
        module Result
          extend Amocrm::Internal::Type::Union

          variant -> { Amocrm::Models::APITasksGetByIDResponse::Task::Result::Text }

          variant Amocrm::Internal::Type::Unknown

          class Text < Amocrm::Internal::Type::BaseModel
            # @!attribute text
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(text: nil)
            #   @param text [String]
          end

          # @!method self.variants
          #   @return [Array(Amocrm::Models::APITasksGetByIDResponse::Task::Result::Text, Object)]
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
      #   @return [Array(Amocrm::Models::APITasksGetByIDResponse::Task, Amocrm::Models::APITasksGetByIDResponse::Problem)]
    end
  end
end
