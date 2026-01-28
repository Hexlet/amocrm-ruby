# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "amocrm/version"
require_relative "amocrm/internal/util"
require_relative "amocrm/internal/type/converter"
require_relative "amocrm/internal/type/unknown"
require_relative "amocrm/internal/type/boolean"
require_relative "amocrm/internal/type/file_input"
require_relative "amocrm/internal/type/enum"
require_relative "amocrm/internal/type/union"
require_relative "amocrm/internal/type/array_of"
require_relative "amocrm/internal/type/hash_of"
require_relative "amocrm/internal/type/base_model"
require_relative "amocrm/internal/type/base_page"
require_relative "amocrm/internal/type/request_parameters"
require_relative "amocrm/internal"
require_relative "amocrm/request_options"
require_relative "amocrm/file_part"
require_relative "amocrm/errors"
require_relative "amocrm/internal/transport/base_client"
require_relative "amocrm/internal/transport/pooled_net_requester"
require_relative "amocrm/client"
require_relative "amocrm/models/pet"
require_relative "amocrm/models/store/order"
require_relative "amocrm/models/user"
require_relative "amocrm/models/pet_create_params"
require_relative "amocrm/models/pet_delete_params"
require_relative "amocrm/models/pet_find_by_status_params"
require_relative "amocrm/models/pet_find_by_status_response"
require_relative "amocrm/models/pet_find_by_tags_params"
require_relative "amocrm/models/pet_find_by_tags_response"
require_relative "amocrm/models/pet_retrieve_params"
require_relative "amocrm/models/pet_update_params"
require_relative "amocrm/models/pet_update_with_form_params"
require_relative "amocrm/models/pet_upload_image_params"
require_relative "amocrm/models/pet_upload_image_response"
require_relative "amocrm/models/store/order_create_params"
require_relative "amocrm/models/store/order_delete_params"
require_relative "amocrm/models/store/order_retrieve_params"
require_relative "amocrm/models/store_list_inventory_params"
require_relative "amocrm/models/store_list_inventory_response"
require_relative "amocrm/models/user_create_params"
require_relative "amocrm/models/user_create_with_list_params"
require_relative "amocrm/models/user_delete_params"
require_relative "amocrm/models/user_login_params"
require_relative "amocrm/models/user_login_response"
require_relative "amocrm/models/user_logout_params"
require_relative "amocrm/models/user_retrieve_params"
require_relative "amocrm/models/user_update_params"
require_relative "amocrm/models"
require_relative "amocrm/resources/pet"
require_relative "amocrm/resources/store"
require_relative "amocrm/resources/store/order"
require_relative "amocrm/resources/user"
