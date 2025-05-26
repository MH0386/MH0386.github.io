from flet import AppBar, Colors, Column, ElevatedButton, FontWeight, Page, Text, View


def projects(page: Page) -> View:
    return View(
        route="/projects",
        controls=[
            AppBar(
                title=Text(value="Projects"),
                bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
            ),
            ElevatedButton(
                text="Home",
                on_click=lambda _: page.go(route="/"),
            ),
            Column(
                controls=[
                    Text(value="My Projects", size=20, weight=FontWeight.BOLD),
                    Text(value="Project details will be added here..."),
                ],
                spacing=20,
                expand=True,
            ),
        ],
    )
