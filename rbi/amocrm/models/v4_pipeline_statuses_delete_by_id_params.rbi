# typed: strong

module Amocrm
  module Models
    class V4PipelineStatusesDeleteByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4PipelineStatusesDeleteByIDParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :pipeline_id

      sig do
        params(
          pipeline_id: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(pipeline_id:, request_options: {})
      end

      sig do
        override.returns(
          { pipeline_id: Integer, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
