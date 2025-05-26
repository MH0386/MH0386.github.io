from flet import AppBar, Colors, ElevatedButton, Page, Text, View


def contact(page: Page) -> View:
    return View(
        route="/contact",
        controls=[
            AppBar(
                title=Text(value="Contact"),
                bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
            ),
            ElevatedButton(
                text="Home",
                on_click=lambda _: page.go(route="/"),
            ),
        ],
    )
