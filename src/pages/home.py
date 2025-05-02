import flet as ft  # type: ignore


def home(page: ft.Page) -> ft.View:
    return ft.View(
        "/",
        [
            ft.AppBar(
                title=ft.Text("Flet app"),
                bgcolor=ft.Colors.SURFACE_CONTAINER_HIGHEST,
            ),
            ft.ElevatedButton(
                "Visit Store",
                on_click=lambda _: page.go("/store"),
            ),
        ],
    )
