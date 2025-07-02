import reflex as rx

from mh0386.component import contact_item, navbar_icons

app = rx.App()


@rx.page(route="/", title="Home Page")
def index() -> rx.Component:
    return rx.container(
        navbar_icons(),
        rx.vstack(
            (
                rx.heading("Hi! My name is", size="6"),
                rx.heading("Mohamed Hisham Abdelzaher", size="9", weight="bold"),
            ),
            spacing="5",
            justify="center",
            min_height="85vh",
        ),
    )


@rx.page(route="/experience", title="Experience")
def experience() -> rx.Component:
    return rx.container(
        (
            navbar_icons(),
            rx.center(
                rx.heading("This page is under construction", size="5", weight="bold"),
                justify="center",
                align="center",
                direction="column",
                min_height="85vh",
            ),
        )
    )


@rx.page(route="/projects", title="Projects")
def projects() -> rx.Component:
    return rx.container(
        (
            navbar_icons(),
            rx.center(
                rx.heading("This page is under construction", size="5", weight="bold"),
                justify="center",
                align="center",
                direction="column",
                min_height="85vh",
            ),
        )
    )


@rx.page(route="/contact", title="Contact")
def contact() -> rx.Component:
    return rx.container(
        (
            navbar_icons(),
            rx.center(
                (
                    rx.button(
                        "mohamed.hisham.abdelzaher@gmail.com",
                        size="4",
                        variant="soft",
                        on_click=rx.redirect(
                            "mailto:mohamed.hisham.abdelzaher@gmail.com",
                            is_external=True,
                        ),
                    ),
                    rx.divider(),
                    rx.hstack(
                        (
                            contact_item("GitHub", "https://github.com/MH0386"),
                            contact_item("Kaggle", "https://kaggle.com/MH0386"),
                            contact_item(
                                "Hugging Face", "https://huggingface.co/MH0386"
                            ),
                            contact_item("LinkedIn", "https://linkedin.com/in/MH0386"),
                            contact_item("Twitter", "https://twitter.com/MH0386"),
                        ),
                        align="center",
                        justify="center",
                        spacing="5",
                    ),
                ),
                justify="center",
                align="center",
                direction="column",
                min_height="85vh",
                spacing="5",
            ),
        )
    )


@rx.page(route="/resume", title="Resume")
def resume() -> rx.Component:
    return rx.container(
        navbar_icons(),
        rx.center(
            rx.el.Embed.create(
                src="https://mohamedhisham.is-a.dev/MH0386/resume.pdf",
                type="application/pdf",
                style={
                    "width": "100%",
                    "height": "100vh",
                    "border": "none",
                },
            ),
        ),
    )
