from flet import Page, View, AppBar, ElevatedButton, Colors, Text


def projects(page: Page) -> View:
    return View(
        "/projects",
        [
            AppBar(
                title=Text("Projects"),
                bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
            ),
            ElevatedButton(
                "Home",
                on_click=lambda _: page.go("/"),
            ),
        ],
    )
