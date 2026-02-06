# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#talks_close
    class APITalksCloseParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute force_close
      #   Force close talk without NPS bot.
      #
      #   @return [Boolean, nil]
      optional :force_close, Amocrm::Internal::Type::Boolean

      # @!method initialize(force_close: nil, request_options: {})
      #   @param force_close [Boolean] Force close talk without NPS bot.
      #
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
