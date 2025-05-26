from flet import AppBar, Colors, ElevatedButton, Page, Text, View


def certificates(page: Page) -> View:
    return View(
        route="/certificates",
        controls=[
            AppBar(
                title=Text(value="Certificates"),
                bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
            ),
            ElevatedButton(
                text="Home",
                on_click=lambda _: page.go(route="/"),
            ),
        ],
    )
