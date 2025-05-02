import flet as ft  # type: ignore


def main(page: ft.Page):
    page.title = "Routes Example"

    def route_change(route: ft.RouteChangeEvent):
        page.views.clear()
        page.views.append(
            ft.View(
                "/",
                [
                    ft.AppBar(
                        title=ft.Text("Flet app"),
                        bgcolor=ft.Colors.SURFACE_CONTAINER_HIGHEST,
                    ),
                    ft.ElevatedButton(
                        "Visit Store", on_click=lambda _: page.go("/store")
                    ),
                ],
            )
        )
        if page.route == "/store":
            page.views.append(
                ft.View(
                    "/store",
                    [
                        ft.AppBar(
                            title=ft.Text("Store"),
                            bgcolor=ft.Colors.SURFACE_CONTAINER_HIGHEST,
                        ),
                        ft.ElevatedButton("Go Home", on_click=lambda _: page.go("/")),
                    ],
                )
            )
        page.update()
        print(route)

    def view_pop(view: ft.RouteChangeEvent):
        page.views.pop()
        top_view = page.views[-1]
        page.go(route=top_view.route)  # pyright: ignore [reportArgumentType]
        print(view)

    page.on_route_change = route_change
    page.on_view_pop = view_pop
    page.go(page.route)


ft.app(main, view=ft.AppView.WEB_BROWSER)
