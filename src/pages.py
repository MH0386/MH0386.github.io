from flet import (
    AppBar,
    Colors,
    Column,
    CrossAxisAlignment,
    ElevatedButton,
    FontWeight,
    MainAxisAlignment,
    Page,
    Row,
    Text,
    View,
)


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


def home(page: Page) -> View:
    return View(
        route="/",
        controls=[
            Row(
                controls=[
                    Column(
                        alignment=MainAxisAlignment.CENTER,
                        horizontal_alignment=CrossAxisAlignment.CENTER,
                        expand=True,
                        controls=[
                            Text(value="Hi, My name is"),
                            Text(value="Mohamed Hisham Abdelzaher"),
                            Row(
                                controls=[
                                    ElevatedButton(
                                        text="Projects",
                                        on_click=lambda _: page.go(route="/projects"),
                                    ),
                                    ElevatedButton(
                                        text="Resume",
                                        on_click=lambda _: page.go(route="/resume"),
                                    ),
                                    ElevatedButton(
                                        text="Contact",
                                        on_click=lambda _: page.go(route="/contact"),
                                    ),
                                ],
                                spacing=10,
                                alignment=MainAxisAlignment.CENTER,
                            ),
                        ],
                    ),
                ],
                alignment=MainAxisAlignment.CENTER,
                expand=True,
            ),
        ],
    )
