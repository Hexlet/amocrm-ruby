# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#users_get_by_id
    module APIUsersGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIUsersGetByIDResponse::User }

      variant -> { Amocrm::Models::APIUsersGetByIDResponse::Problem }

      class User < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIUsersGetByIDResponse::User::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::APIUsersGetByIDResponse::User::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute amojo_id
        #
        #   @return [String, nil]
        optional :amojo_id, String, nil?: true

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute lang
        #
        #   @return [String, nil]
        optional :lang, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute phone_number
        #
        #   @return [String, nil]
        optional :phone_number, String, nil?: true

        # @!attribute rights
        #
        #   @return [Amocrm::Models::APIUsersGetByIDResponse::User::Rights, nil]
        optional :rights, -> { Amocrm::Models::APIUsersGetByIDResponse::User::Rights }

        # @!attribute user_rank
        #
        #   @return [String, nil]
        optional :user_rank, String, nil?: true

        # @!attribute uuid
        #
        #   @return [String, nil]
        optional :uuid, String, nil?: true

        # @!method initialize(id: nil, _embedded: nil, _links: nil, amojo_id: nil, email: nil, lang: nil, name: nil, phone_number: nil, rights: nil, user_rank: nil, uuid: nil)
        #   @param id [Integer]
        #   @param _embedded [Amocrm::Models::APIUsersGetByIDResponse::User::Embedded]
        #   @param _links [Object]
        #   @param amojo_id [String, nil]
        #   @param email [String]
        #   @param lang [String]
        #   @param name [String]
        #   @param phone_number [String, nil]
        #   @param rights [Amocrm::Models::APIUsersGetByIDResponse::User::Rights]
        #   @param user_rank [String, nil]
        #   @param uuid [String, nil]

        # @see Amocrm::Models::APIUsersGetByIDResponse::User#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute groups
          #
          #   @return [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Group>, nil]
          optional :groups,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Group] }

          # @!attribute roles
          #
          #   @return [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role>, nil]
          optional :roles,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role] }

          # @!method initialize(groups: nil, roles: nil)
          #   @param groups [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Group>]
          #   @param roles [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role>]

          class Group < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute uuid
            #
            #   @return [String, nil]
            optional :uuid, String

            # @!method initialize(id: nil, name: nil, uuid: nil)
            #   @param id [Integer]
            #   @param name [String]
            #   @param uuid [String]
          end

          class Role < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _embedded
            #
            #   @return [Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Embedded, nil]
            optional :_embedded, -> { Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Embedded }

            # @!attribute _links
            #
            #   @return [Object, nil]
            optional :_links, Amocrm::Internal::Type::Unknown

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute rights
            #
            #   @return [Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Rights, nil]
            optional :rights, -> { Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Rights }

            # @!method initialize(id: nil, _embedded: nil, _links: nil, name: nil, rights: nil)
            #   @param id [Integer]
            #   @param _embedded [Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Embedded]
            #   @param _links [Object]
            #   @param name [String]
            #   @param rights [Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Rights]

            # @see Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role#_embedded
            class Embedded < Amocrm::Internal::Type::BaseModel
              # @!attribute users
              #
              #   @return [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Embedded::User>, nil]
              optional :users,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Embedded::User] }

              # @!method initialize(users: nil)
              #   @param users [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Embedded::User>]

              class User < Amocrm::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!method initialize(id: nil)
                #   @param id [Integer]
              end
            end

            # @see Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role#rights
            class Rights < Amocrm::Internal::Type::BaseModel
              # @!attribute catalog_access
              #
              #   @return [Boolean, nil]
              optional :catalog_access, Amocrm::Internal::Type::Boolean

              # @!attribute companies
              #
              #   @return [Object, nil]
              optional :companies, Amocrm::Internal::Type::Unknown

              # @!attribute contacts
              #
              #   @return [Object, nil]
              optional :contacts, Amocrm::Internal::Type::Unknown

              # @!attribute group_id
              #
              #   @return [Integer, nil]
              optional :group_id, Integer, nil?: true

              # @!attribute is_active
              #
              #   @return [Boolean, nil]
              optional :is_active, Amocrm::Internal::Type::Boolean

              # @!attribute is_admin
              #
              #   @return [Boolean, nil]
              optional :is_admin, Amocrm::Internal::Type::Boolean

              # @!attribute is_free
              #
              #   @return [Boolean, nil]
              optional :is_free, Amocrm::Internal::Type::Boolean

              # @!attribute leads
              #
              #   @return [Object, nil]
              optional :leads, Amocrm::Internal::Type::Unknown

              # @!attribute mail_access
              #
              #   @return [Boolean, nil]
              optional :mail_access, Amocrm::Internal::Type::Boolean

              # @!attribute role_id
              #
              #   @return [Integer, nil]
              optional :role_id, Integer, nil?: true

              # @!attribute status_rights
              #
              #   @return [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Rights::StatusRight>, nil]
              optional :status_rights,
                       -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Rights::StatusRight] },
                       nil?: true

              # @!attribute tasks
              #
              #   @return [Object, nil]
              optional :tasks, Amocrm::Internal::Type::Unknown

              # @!method initialize(catalog_access: nil, companies: nil, contacts: nil, group_id: nil, is_active: nil, is_admin: nil, is_free: nil, leads: nil, mail_access: nil, role_id: nil, status_rights: nil, tasks: nil)
              #   @param catalog_access [Boolean]
              #   @param companies [Object]
              #   @param contacts [Object]
              #   @param group_id [Integer, nil]
              #   @param is_active [Boolean]
              #   @param is_admin [Boolean]
              #   @param is_free [Boolean]
              #   @param leads [Object]
              #   @param mail_access [Boolean]
              #   @param role_id [Integer, nil]
              #   @param status_rights [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Embedded::Role::Rights::StatusRight>, nil]
              #   @param tasks [Object]

              class StatusRight < Amocrm::Internal::Type::BaseModel
                # @!attribute entity_type
                #
                #   @return [String, nil]
                optional :entity_type, String

                # @!attribute pipeline_id
                #
                #   @return [Integer, nil]
                optional :pipeline_id, Integer

                # @!attribute rights
                #
                #   @return [Object, nil]
                optional :rights, Amocrm::Internal::Type::Unknown

                # @!attribute status_id
                #
                #   @return [Integer, nil]
                optional :status_id, Integer

                # @!method initialize(entity_type: nil, pipeline_id: nil, rights: nil, status_id: nil)
                #   @param entity_type [String]
                #   @param pipeline_id [Integer]
                #   @param rights [Object]
                #   @param status_id [Integer]
              end
            end
          end
        end

        # @see Amocrm::Models::APIUsersGetByIDResponse::User#rights
        class Rights < Amocrm::Internal::Type::BaseModel
          # @!attribute catalog_access
          #
          #   @return [Boolean, nil]
          optional :catalog_access, Amocrm::Internal::Type::Boolean

          # @!attribute companies
          #
          #   @return [Object, nil]
          optional :companies, Amocrm::Internal::Type::Unknown

          # @!attribute contacts
          #
          #   @return [Object, nil]
          optional :contacts, Amocrm::Internal::Type::Unknown

          # @!attribute group_id
          #
          #   @return [Integer, nil]
          optional :group_id, Integer, nil?: true

          # @!attribute is_active
          #
          #   @return [Boolean, nil]
          optional :is_active, Amocrm::Internal::Type::Boolean

          # @!attribute is_admin
          #
          #   @return [Boolean, nil]
          optional :is_admin, Amocrm::Internal::Type::Boolean

          # @!attribute is_free
          #
          #   @return [Boolean, nil]
          optional :is_free, Amocrm::Internal::Type::Boolean

          # @!attribute leads
          #
          #   @return [Object, nil]
          optional :leads, Amocrm::Internal::Type::Unknown

          # @!attribute mail_access
          #
          #   @return [Boolean, nil]
          optional :mail_access, Amocrm::Internal::Type::Boolean

          # @!attribute role_id
          #
          #   @return [Integer, nil]
          optional :role_id, Integer, nil?: true

          # @!attribute status_rights
          #
          #   @return [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Rights::StatusRight>, nil]
          optional :status_rights,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIUsersGetByIDResponse::User::Rights::StatusRight] },
                   nil?: true

          # @!attribute tasks
          #
          #   @return [Object, nil]
          optional :tasks, Amocrm::Internal::Type::Unknown

          # @!method initialize(catalog_access: nil, companies: nil, contacts: nil, group_id: nil, is_active: nil, is_admin: nil, is_free: nil, leads: nil, mail_access: nil, role_id: nil, status_rights: nil, tasks: nil)
          #   @param catalog_access [Boolean]
          #   @param companies [Object]
          #   @param contacts [Object]
          #   @param group_id [Integer, nil]
          #   @param is_active [Boolean]
          #   @param is_admin [Boolean]
          #   @param is_free [Boolean]
          #   @param leads [Object]
          #   @param mail_access [Boolean]
          #   @param role_id [Integer, nil]
          #   @param status_rights [Array<Amocrm::Models::APIUsersGetByIDResponse::User::Rights::StatusRight>, nil]
          #   @param tasks [Object]

          class StatusRight < Amocrm::Internal::Type::BaseModel
            # @!attribute entity_type
            #
            #   @return [String, nil]
            optional :entity_type, String

            # @!attribute pipeline_id
            #
            #   @return [Integer, nil]
            optional :pipeline_id, Integer

            # @!attribute rights
            #
            #   @return [Object, nil]
            optional :rights, Amocrm::Internal::Type::Unknown

            # @!attribute status_id
            #
            #   @return [Integer, nil]
            optional :status_id, Integer

            # @!method initialize(entity_type: nil, pipeline_id: nil, rights: nil, status_id: nil)
            #   @param entity_type [String]
            #   @param pipeline_id [Integer]
            #   @param rights [Object]
            #   @param status_id [Integer]
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
      #   @return [Array(Amocrm::Models::APIUsersGetByIDResponse::User, Amocrm::Models::APIUsersGetByIDResponse::Problem)]
    end
  end
end
