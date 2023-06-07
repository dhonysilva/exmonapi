defmodule ExMonWeb.WelcomeController do
  use ExMonWeb, :controller

  # Toda action no Phx espera dois parâmetros:
  # a conexão
  # e quais parâmetros serão recebidos na rota
  def index(conn, _params) do
    IO.inspect(conn)
    text(conn, "Welcome to the ExMon API.")
  end
end
