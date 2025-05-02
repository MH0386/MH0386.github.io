import flet as ft  # type: ignore
from pages.home import home


def main(page: ft.Page):
    page.title = "Mohamed Hisham Abdelzaher"

    def route_change(route: ft.RouteChangeEvent):
        page.views.clear()
        page.views.append(home(page))
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
        page.go(route=top_view.route)
        print(view)

    page.on_route_change = route_change
    page.on_view_pop = view_pop
    page.go(page.route)


ft.app(main, view=ft.AppView.WEB_BROWSER)
