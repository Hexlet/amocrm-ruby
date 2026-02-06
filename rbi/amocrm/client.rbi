# typed: strong

module Amocrm
  class Client < Amocrm::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :token

    sig { returns(String) }
    attr_reader :subdomain

    sig { returns(Amocrm::Resources::Account) }
    attr_reader :account

    sig { returns(Amocrm::Resources::Calls) }
    attr_reader :calls

    sig { returns(Amocrm::Resources::CatalogElements) }
    attr_reader :catalog_elements

    sig { returns(Amocrm::Resources::Catalogs) }
    attr_reader :catalogs

    sig { returns(Amocrm::Resources::Companies) }
    attr_reader :companies

    sig { returns(Amocrm::Resources::ContactChats) }
    attr_reader :contact_chats

    sig { returns(Amocrm::Resources::Contacts) }
    attr_reader :contacts

    sig { returns(Amocrm::Resources::CustomFieldGroups) }
    attr_reader :custom_field_groups

    sig { returns(Amocrm::Resources::CustomFields) }
    attr_reader :custom_fields

    sig { returns(Amocrm::Resources::CustomerBonusPoints) }
    attr_reader :customer_bonus_points

    sig { returns(Amocrm::Resources::CustomerSegments) }
    attr_reader :customer_segments

    sig { returns(Amocrm::Resources::CustomerStatuses) }
    attr_reader :customer_statuses

    sig { returns(Amocrm::Resources::CustomerTransactions) }
    attr_reader :customer_transactions

    sig { returns(Amocrm::Resources::Customers) }
    attr_reader :customers

    sig { returns(Amocrm::Resources::CustomersMode) }
    attr_reader :customers_mode

    sig { returns(Amocrm::Resources::EntityFollowers) }
    attr_reader :entity_followers

    sig { returns(Amocrm::Resources::EntityLinks) }
    attr_reader :entity_links

    sig { returns(Amocrm::Resources::EntityNotes) }
    attr_reader :entity_notes

    sig { returns(Amocrm::Resources::EntityNotesByParent) }
    attr_reader :entity_notes_by_parent

    sig { returns(Amocrm::Resources::Events) }
    attr_reader :events

    sig { returns(Amocrm::Resources::Leads) }
    attr_reader :leads

    sig { returns(Amocrm::Resources::PipelineStatuses) }
    attr_reader :pipeline_statuses

    sig { returns(Amocrm::Resources::Pipelines) }
    attr_reader :pipelines

    sig { returns(Amocrm::Resources::Roles) }
    attr_reader :roles

    sig { returns(Amocrm::Resources::Salesbot) }
    attr_reader :salesbot

    sig { returns(Amocrm::Resources::ShortLinks) }
    attr_reader :short_links

    sig { returns(Amocrm::Resources::Sources) }
    attr_reader :sources

    sig { returns(Amocrm::Resources::Tags) }
    attr_reader :tags

    sig { returns(Amocrm::Resources::Talks) }
    attr_reader :talks

    sig { returns(Amocrm::Resources::Tasks) }
    attr_reader :tasks

    sig { returns(Amocrm::Resources::UnsortedLeads) }
    attr_reader :unsorted_leads

    sig { returns(Amocrm::Resources::Users) }
    attr_reader :users

    sig { returns(Amocrm::Resources::Webhooks) }
    attr_reader :webhooks

    sig { returns(Amocrm::Resources::WebsiteButtons) }
    attr_reader :website_buttons

    sig { returns(Amocrm::Resources::WidgetBotContinue) }
    attr_reader :widget_bot_continue

    sig { returns(Amocrm::Resources::Widgets) }
    attr_reader :widgets

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        token: T.nilable(String),
        subdomain: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["AMOCRM_AUTH_TOKEN"]`
      token: ENV["AMOCRM_AUTH_TOKEN"],
      # Defaults to `ENV["AMOCRM_SUBDOMAIN"]`
      subdomain: ENV["AMOCRM_SUBDOMAIN"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["AMOCRM_BASE_URL"]`
      base_url: ENV["AMOCRM_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Amocrm::Client::DEFAULT_MAX_RETRIES,
      timeout: Amocrm::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Amocrm::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Amocrm::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
