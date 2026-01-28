# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::PetTest < Amocrm::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @amocrm.pet.create(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => Amocrm::PetAPI
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Amocrm::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Amocrm::PetAPI::Category | nil,
        status: Amocrm::PetAPI::Status | nil,
        tags: ^(Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI::Tag]) | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @amocrm.pet.retrieve(0)

    assert_pattern do
      response => Amocrm::PetAPI
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Amocrm::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Amocrm::PetAPI::Category | nil,
        status: Amocrm::PetAPI::Status | nil,
        tags: ^(Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI::Tag]) | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @amocrm.pet.update(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => Amocrm::PetAPI
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Amocrm::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Amocrm::PetAPI::Category | nil,
        status: Amocrm::PetAPI::Status | nil,
        tags: ^(Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI::Tag]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @amocrm.pet.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_find_by_status
    skip("Prism tests are disabled")

    response = @amocrm.pet.find_by_status

    assert_pattern do
      response => ^(Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI])
    end
  end

  def test_find_by_tags
    skip("Prism tests are disabled")

    response = @amocrm.pet.find_by_tags

    assert_pattern do
      response => ^(Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI])
    end
  end

  def test_update_with_form
    skip("Prism tests are disabled")

    response = @amocrm.pet.update_with_form(0)

    assert_pattern do
      response => nil
    end
  end

  def test_upload_image_required_params
    skip("Prism tests are disabled")

    response = @amocrm.pet.upload_image(0, body: Pathname(__FILE__))

    assert_pattern do
      response => Amocrm::Models::PetUploadImageResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        message: String | nil,
        type: String | nil
      }
    end
  end
end
