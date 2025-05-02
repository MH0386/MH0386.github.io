from flet import (
    Page,
    View,
    Container,
    AppBar,
    ElevatedButton,
    Colors,
    Text,
    Column,
    Row,
    MainAxisAlignment,
    CrossAxisAlignment,
)


def home(page: Page) -> View:
    return View(
        "/",
        [
            Row(
                controls=[
                    Column(
                        alignment=MainAxisAlignment.CENTER,
                        horizontal_alignment=CrossAxisAlignment.CENTER,
                        expand=True,
                        controls=[
                            Text("Hi, My name is"),
                            Text("Mohamed Hisham Abdelzaher"),
                        ],
                    ),
                ],
                alignment=MainAxisAlignment.CENTER,
                expand=True,
            ),
        ],
    )
