# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Calls#create
    module CallCreateResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::CallCreateResponse::CallCreateResponse }

      variant -> { Amocrm::Models::CallCreateResponse::Problem }

      class CallCreateResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded }

        # @!attribute _total_items
        #
        #   @return [Integer, nil]
        optional :_total_items, Integer

        # @!attribute errors
        #
        #   @return [Array<Object>, nil]
        optional :errors, Amocrm::Internal::Type::ArrayOf[Amocrm::Internal::Type::Unknown]

        # @!method initialize(_embedded: nil, _total_items: nil, errors: nil)
        #   @param _embedded [Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded]
        #   @param _total_items [Integer]
        #   @param errors [Array<Object>]

        # @see Amocrm::Models::CallCreateResponse::CallCreateResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute calls
          #
          #   @return [Array<Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call>, nil]
          optional :calls,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call] }

          # @!method initialize(calls: nil)
          #   @param calls [Array<Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call>]

          class Call < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call::Embedded, nil]
            optional :_embedded,
                     -> { Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call::Embedded }

            # @!attribute account_id
            #
            #   @return [Integer, nil]
            optional :account_id, Integer

            # @!attribute entity_id
            #
            #   @return [Integer, nil]
            optional :entity_id, Integer

            # @!attribute entity_type
            #
            #   @return [String, Integer, nil]
            optional :entity_type,
                     union: -> { Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call::EntityType }

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!method initialize(id: nil, _embedded: nil, account_id: nil, entity_id: nil, entity_type: nil, request_id: nil)
            #   @param id [Integer]
            #   @param _embedded [Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call::Embedded]
            #   @param account_id [Integer]
            #   @param entity_id [Integer]
            #   @param entity_type [String, Integer]
            #   @param request_id [String]

            # @see Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute entity
              #
              #   @return [Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call::Embedded::Entity, nil]
              optional :entity,
                       -> { Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call::Embedded::Entity }

              # @!method initialize(entity: nil)
              #   @param entity [Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call::Embedded::Entity]

              # @see Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call::Embedded#entity
              class Entity < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute _links
                #
                #   @return [Object, nil]
                optional :_links, Amocrm::Internal::Type::Unknown

                # @!method initialize(id: nil, _links: nil)
                #   @param id [Integer]
                #   @param _links [Object]
              end
            end

            # @see Amocrm::Models::CallCreateResponse::CallCreateResponse::Embedded::Call#entity_type
            module EntityType
              extend Amocrm::Internal::Type::Union

              variant String

              variant Integer

              # @!method self.variants
              #   @return [Array(String, Integer)]
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
      #   @return [Array(Amocrm::Models::CallCreateResponse::CallCreateResponse, Amocrm::Models::CallCreateResponse::Problem)]
    end
  end
end
