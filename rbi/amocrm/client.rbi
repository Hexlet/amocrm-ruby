# typed: strong

module Amocrm
  class Client < Amocrm::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Amocrm::Resources::V4) }
    attr_reader :v4

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["AMOCRM_API_KEY"]`
      api_key: ENV["AMOCRM_API_KEY"],
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
