defmodule Uuid.Mixfile do
  use Mix.Project

  def project do
    [app: :uuid,
     version: "1.6.0",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [
       :quickrand]]
  end

  defp deps do
    [{:quickrand, "~> 1.6.0"}]
  end

  defp description do
    "Erlang UUID Implementation"
  end

  defp package do
    [name: :uuid_erl,
     files: ~w(src include doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/okeuday/uuid"}]
   end
end
