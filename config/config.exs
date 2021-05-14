import Config

config :logger, level: :info

config :naive,
  binance_client: BinanceMock
