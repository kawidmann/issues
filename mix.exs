defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [
      app: :issues,
      version: "0.0.1",
      name: "Issues",
      source_url: "https://github.com/kawidmann/issues",
      escript: escript_config(),
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 0.9"},
      {:poison, "~> 2.2"},
      {:ex_doc, "~> 0.12"},
      {:earmark, "~> 1.0", override: true}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI]
  end
end
