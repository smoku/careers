defmodule CareersWeb.PageController do
  use CareersWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def components(conn, _params) do
    components_path = "js/components/"

    {:safe, map1} =
      ReactRender.render(components_path <> "Map.jsx", %{
        title: "Nasze biuro 1",
        subtitle: "Opis 1"
      })

    {:safe, map2} =
      ReactRender.render(components_path <> "Map.jsx", %{
        title: "Nasze biuro 2",
        subtitle: "Opis 2"
      })

    {:safe, text} =
      ReactRender.render(components_path <> "Text.jsx", %{
        title: "Jestem tekstem",
        subtitle: "Ja też :)"
      })

    components = [map1, map2, text]

    render(conn, "components.html", components: components)
  end
end
