# frozen_string_literal: true

module Amocrm
  class Client < Amocrm::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :token

    # @return [String]
    attr_reader :subdomain

    # @return [Amocrm::Resources::Account]
    attr_reader :account

    # @return [Amocrm::Resources::Calls]
    attr_reader :calls

    # @return [Amocrm::Resources::CatalogElements]
    attr_reader :catalog_elements

    # @return [Amocrm::Resources::Catalogs]
    attr_reader :catalogs

    # @return [Amocrm::Resources::Companies]
    attr_reader :companies

    # @return [Amocrm::Resources::ContactChats]
    attr_reader :contact_chats

    # @return [Amocrm::Resources::Contacts]
    attr_reader :contacts

    # @return [Amocrm::Resources::CustomFieldGroups]
    attr_reader :custom_field_groups

    # @return [Amocrm::Resources::CustomFields]
    attr_reader :custom_fields

    # @return [Amocrm::Resources::CustomerBonusPoints]
    attr_reader :customer_bonus_points

    # @return [Amocrm::Resources::CustomerSegments]
    attr_reader :customer_segments

    # @return [Amocrm::Resources::CustomerStatuses]
    attr_reader :customer_statuses

    # @return [Amocrm::Resources::CustomerTransactions]
    attr_reader :customer_transactions

    # @return [Amocrm::Resources::Customers]
    attr_reader :customers

    # @return [Amocrm::Resources::CustomersMode]
    attr_reader :customers_mode

    # @return [Amocrm::Resources::EntityFollowers]
    attr_reader :entity_followers

    # @return [Amocrm::Resources::EntityLinks]
    attr_reader :entity_links

    # @return [Amocrm::Resources::EntityNotes]
    attr_reader :entity_notes

    # @return [Amocrm::Resources::EntityNotesByParent]
    attr_reader :entity_notes_by_parent

    # @return [Amocrm::Resources::Events]
    attr_reader :events

    # @return [Amocrm::Resources::Leads]
    attr_reader :leads

    # @return [Amocrm::Resources::PipelineStatuses]
    attr_reader :pipeline_statuses

    # @return [Amocrm::Resources::Pipelines]
    attr_reader :pipelines

    # @return [Amocrm::Resources::Roles]
    attr_reader :roles

    # @return [Amocrm::Resources::Salesbot]
    attr_reader :salesbot

    # @return [Amocrm::Resources::ShortLinks]
    attr_reader :short_links

    # @return [Amocrm::Resources::Sources]
    attr_reader :sources

    # @return [Amocrm::Resources::Tags]
    attr_reader :tags

    # @return [Amocrm::Resources::Talks]
    attr_reader :talks

    # @return [Amocrm::Resources::Tasks]
    attr_reader :tasks

    # @return [Amocrm::Resources::UnsortedLeads]
    attr_reader :unsorted_leads

    # @return [Amocrm::Resources::Users]
    attr_reader :users

    # @return [Amocrm::Resources::Webhooks]
    attr_reader :webhooks

    # @return [Amocrm::Resources::WebsiteButtons]
    attr_reader :website_buttons

    # @return [Amocrm::Resources::WidgetBotContinue]
    attr_reader :widget_bot_continue

    # @return [Amocrm::Resources::Widgets]
    attr_reader :widgets

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @token.nil?

      {"authorization" => "Bearer #{@token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param token [String, nil] Defaults to `ENV["AMOCRM_AUTH_TOKEN"]`
    #
    # @param subdomain [String, nil] Defaults to `ENV["AMOCRM_SUBDOMAIN"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["AMOCRM_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      token: ENV["AMOCRM_AUTH_TOKEN"],
      subdomain: ENV["AMOCRM_SUBDOMAIN"],
      base_url: ENV["AMOCRM_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://#{subdomain}.amocrm.ru"

      if token.nil?
        raise ArgumentError.new("token is required, and can be set via environ: \"AMOCRM_AUTH_TOKEN\"")
      end
      if subdomain.nil?
        raise ArgumentError.new("subdomain is required, and can be set via environ: \"AMOCRM_SUBDOMAIN\"")
      end

      @token = token.to_s
      @subdomain = subdomain.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @account = Amocrm::Resources::Account.new(client: self)
      @calls = Amocrm::Resources::Calls.new(client: self)
      @catalog_elements = Amocrm::Resources::CatalogElements.new(client: self)
      @catalogs = Amocrm::Resources::Catalogs.new(client: self)
      @companies = Amocrm::Resources::Companies.new(client: self)
      @contact_chats = Amocrm::Resources::ContactChats.new(client: self)
      @contacts = Amocrm::Resources::Contacts.new(client: self)
      @custom_field_groups = Amocrm::Resources::CustomFieldGroups.new(client: self)
      @custom_fields = Amocrm::Resources::CustomFields.new(client: self)
      @customer_bonus_points = Amocrm::Resources::CustomerBonusPoints.new(client: self)
      @customer_segments = Amocrm::Resources::CustomerSegments.new(client: self)
      @customer_statuses = Amocrm::Resources::CustomerStatuses.new(client: self)
      @customer_transactions = Amocrm::Resources::CustomerTransactions.new(client: self)
      @customers = Amocrm::Resources::Customers.new(client: self)
      @customers_mode = Amocrm::Resources::CustomersMode.new(client: self)
      @entity_followers = Amocrm::Resources::EntityFollowers.new(client: self)
      @entity_links = Amocrm::Resources::EntityLinks.new(client: self)
      @entity_notes = Amocrm::Resources::EntityNotes.new(client: self)
      @entity_notes_by_parent = Amocrm::Resources::EntityNotesByParent.new(client: self)
      @events = Amocrm::Resources::Events.new(client: self)
      @leads = Amocrm::Resources::Leads.new(client: self)
      @pipeline_statuses = Amocrm::Resources::PipelineStatuses.new(client: self)
      @pipelines = Amocrm::Resources::Pipelines.new(client: self)
      @roles = Amocrm::Resources::Roles.new(client: self)
      @salesbot = Amocrm::Resources::Salesbot.new(client: self)
      @short_links = Amocrm::Resources::ShortLinks.new(client: self)
      @sources = Amocrm::Resources::Sources.new(client: self)
      @tags = Amocrm::Resources::Tags.new(client: self)
      @talks = Amocrm::Resources::Talks.new(client: self)
      @tasks = Amocrm::Resources::Tasks.new(client: self)
      @unsorted_leads = Amocrm::Resources::UnsortedLeads.new(client: self)
      @users = Amocrm::Resources::Users.new(client: self)
      @webhooks = Amocrm::Resources::Webhooks.new(client: self)
      @website_buttons = Amocrm::Resources::WebsiteButtons.new(client: self)
      @widget_bot_continue = Amocrm::Resources::WidgetBotContinue.new(client: self)
      @widgets = Amocrm::Resources::Widgets.new(client: self)
    end
  end
end
