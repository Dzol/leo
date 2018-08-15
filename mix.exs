defmodule Leo.MixProject do
  use Mix.Project

  def project do
    [
      app: :leo,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Leo.Application, []},
      extra_applications: [:cowboy, :plug]
    ]
  end

  defp deps do
    [
      {:recon, "~> 2.3"},
      {:redbug, "~> 1.2"},
      {:plug, "~> 1.6"},
      {:cowboy, "~> 2.0"}
    ]
  end
end
