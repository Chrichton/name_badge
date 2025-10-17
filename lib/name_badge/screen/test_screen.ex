defmodule NameBadge.Screen.TestScreen do
use NameBadge.Screen

require Logger

@impl true
  def render(%{}) do
    """
    #place(center + horizon,
      stack(dir: ttb, spacing: 16pt,
        text(size: 48pt, font: "New Amsterdam", "Hello World!")
      )
    );
    """
  end

  @impl true
  def init(_args, screen) do
    {:ok, assign(screen, :button_hints, %{a: "Next", b: "Back"})}
  end

  @impl true
  def handle_button(_, 0, screen) do
    {:render, navigate(screen, :back)}
  end

  def handle_button(_, _, screen) do
    {:norender, screen}
  end
end
