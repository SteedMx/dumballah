defmodule Dumballah.Mixfile do
  use Mix.Project

  def project do
    [app: :dumballah,
     version: "2.3.0",
     name: "Dumballah",
     source_url: "https://github.com/ZuraGuerra/dumballah",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: description()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:inch_ex, only: :docs}
    ]
  end

  defp description do
    """
    Elixir library to manipulate Unix timestamps, named after a voodoo Loa.
    """
  end

  defp package do
    [
      maintainers: ["Zura Guerra", "Steed"],
      licenses: ["GNU GPLv3"],
      links: %{
        "GitHub" => "https://github.com/ZuraGuerra/dumballah"
      }
    ]
  end
end
