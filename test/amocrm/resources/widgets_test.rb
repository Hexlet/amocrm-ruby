# frozen_string_literal: true

require_relative "../test_helper"

class Amocrm::Test::Resources::WidgetsTest < Amocrm::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @amocrm.widgets.list

    assert_pattern do
      response => Amocrm::Models::WidgetListResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WidgetListResponse::WidgetListResponse
      in Amocrm::Models::WidgetListResponse::Problem
      end
    end
  end

  def test_get_by_code
    skip("Prism tests are disabled")

    response = @amocrm.widgets.get_by_code("widget_code")

    assert_pattern do
      response => Amocrm::Models::WidgetGetByCodeResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WidgetGetByCodeResponse::Widget
      in Amocrm::Models::WidgetGetByCodeResponse::Problem
      end
    end
  end

  def test_install_required_params
    skip("Prism tests are disabled")

    response = @amocrm.widgets.install("widget_code", body: {})

    assert_pattern do
      response => Amocrm::Models::WidgetInstallResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WidgetInstallResponse::Widget
      in Amocrm::Models::WidgetInstallResponse::Problem
      end
    end
  end

  def test_uninstall
    skip("Prism tests are disabled")

    response = @amocrm.widgets.uninstall("widget_code")

    assert_pattern do
      response => Amocrm::Models::WidgetUninstallResponse
    end

    assert_pattern do
      case response
      in Amocrm::Models::WidgetUninstallResponse::EmptyResponse
      in Amocrm::Models::WidgetUninstallResponse::Problem
      end
    end
  end
end
