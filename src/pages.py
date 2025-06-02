from flet import (
    AppBar,
    Colors,
    Column,
    CrossAxisAlignment,
    ElevatedButton,
    FontWeight,
    Icon,
    IconButton,
    Icons,
    MainAxisAlignment,
    Page,
    Row,
    SnackBar,
    Text,
    View,
)
from flet_webview import WebView


def certificates(page: Page) -> View:
    return View(
        route="/certificates",
        appbar=AppBar(
            title=Text(value="Certificates"),
            bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
        ),
        controls=[
            ElevatedButton(
                text="Home",
                on_click=lambda _: page.go(route="/"),
            ),
        ],
    )


def contact(page: Page) -> View:
    return View(
        route="/contact",
        appbar=AppBar(
            title=Text(value="Contact"),
            bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
        ),
        controls=[
            ElevatedButton(
                text="Home",
                on_click=lambda _: page.go(route="/"),
            ),
        ],
    )


def projects(page: Page) -> View:
    return View(
        route="/projects",
        appbar=AppBar(
            title=Text(value="Projects"),
            bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
        ),
        controls=[
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
        appbar=AppBar(
            title=Text(value="Resume"),
            bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
        ),
        controls=[
            ElevatedButton(
                text="Home",
                on_click=lambda _: page.go(route="/"),
            ),
            WebView(
                url="https://mohamedhisham.is-a.dev/assets/docs/resume.pdf",
                on_page_started=lambda _: page.show_snack_bar(
                    SnackBar(content=Text(value="Loading resume..."))
                ),
                on_page_ended=lambda _: page.show_snack_bar(
                    SnackBar(content=Text(value="Resume loaded successfully"))
                ),
                on_web_resource_error=lambda e: page.show_snack_bar(
                    SnackBar(
                        content=Text(value=f"Failed to load resume: {e.data}"),
                        bgcolor=Colors.ERROR,
                    )
                ),
                expand=True,
            ),
        ],
    )


def home(page: Page) -> View:

    return View(
        route="/",
        appbar=AppBar(
            leading=Icon(name=Icons.PALETTE),
            leading_width=40,
            title=Text(value="AppBar Example"),
            center_title=False,
            bgcolor=Colors.SURFACE_CONTAINER_HIGHEST,
            actions=[
                IconButton(icon=Icons.WB_SUNNY_OUTLINED),
                IconButton(icon=Icons.FILTER_3),
            ],
        ),
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
