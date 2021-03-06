defmodule Naive.MixProject do
  use Mix.Project

  def project do
    [
      app: :naive,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Naive.Application, []}
    ]
  end

  defp deps do
    [
      {:binance, "~> 0.7.1"},
      {:decimal, "~> 2.0"},
      {:phoenix_pubsub, "~> 2.0"},
      {:streamer, in_umbrella: true},
      {:binance_mock, in_umbrella: true}
    ]
  end
end
