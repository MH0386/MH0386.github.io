from flet import AppBar, Colors, ElevatedButton, Page, Text, View


def resume(page: Page) -> View:
    return View(
        route="/resume",
        controls=[
            AppBar(
                title=Text(value="Resume"),
                bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
            ),
            ElevatedButton(
                text="Home",
                on_click=lambda _: page.go(route="/"),
            ),
        ],
    )
