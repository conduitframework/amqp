defmodule AMQP.Mixfile do
  use Mix.Project

  @version "0.1.5"

  def project do
    [app: :amqp,
     version: @version,
     elixir: "~> 1.0",
     description: description(),
     package: package(),
     source_url: "https://github.com/pma/amqp",
     deps: deps(),
     docs: [extras: ["README.md"], main: "extra-readme",
            source_ref: "v#{@version}",
            source_url: "https://github.com/pma/amqp"]]
  end

  def application do
    [applications: [:logger, :amqp_client]]
  end

  defp deps do
    [{:earmark, "~> 1.0", only: [:docs, :dev]},
     {:ex_doc, "~> 0.14", only: [:docs, :dev]},
     {:inch_ex, "~> 0.5", only: [:docs, :dev]},
     {:amqp_client, "3.6.2", hex: :conduit_amqp_client}]
  end

  defp description do
    """
    Idiomatic Elixir client for RabbitMQ.
    """
  end

  defp package do
    [name: :amqp19,
     files: ["lib", "mix.exs", "README.md", "LICENSE"],
     maintainers: ["Paulo Almeida", "Eduardo Gurgel"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/pma/amqp"}]
  end
end
