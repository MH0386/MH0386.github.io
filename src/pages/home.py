from flet import (
    Column,
    CrossAxisAlignment,
    ElevatedButton,
    MainAxisAlignment,
    Page,
    Row,
    Text,
    View,
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
