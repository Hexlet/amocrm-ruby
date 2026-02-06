# typed: strong

module Amocrm
  module Models
    class V4CatalogsUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4CatalogsUpdateByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :can_add_elements

      sig { params(can_add_elements: T::Boolean).void }
      attr_writer :can_add_elements

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :can_link_multiple

      sig { params(can_link_multiple: T::Boolean).void }
      attr_writer :can_link_multiple

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :sort

      sig { params(sort: Integer).void }
      attr_writer :sort

      sig do
        params(
          can_add_elements: T::Boolean,
          can_link_multiple: T::Boolean,
          name: String,
          request_id: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        can_add_elements: nil,
        can_link_multiple: nil,
        name: nil,
        request_id: nil,
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            can_add_elements: T::Boolean,
            can_link_multiple: T::Boolean,
            name: String,
            request_id: String,
            sort: Integer,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
