# typed: strong

module Amocrm
  module Models
    class PipelineStatusGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::PipelineStatusGetByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :pipeline_id

      # Expand related entities; comma-separated values (e.g. descriptions).
      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          pipeline_id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        pipeline_id:,
        # Expand related entities; comma-separated values (e.g. descriptions).
        with: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            pipeline_id: Integer,
            with: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
