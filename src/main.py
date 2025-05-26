from flet import (
    AppView,
    CrossAxisAlignment,
    MainAxisAlignment,
    Page,
    RouteChangeEvent,
    View,
    app,
)
from loguru import logger

from pages.home import home
from pages.projects import projects


def main(page: Page) -> None:
    page.title = "Mohamed Hisham Abdelzaher"
    page.vertical_alignment = MainAxisAlignment.CENTER
    page.horizontal_alignment = CrossAxisAlignment.CENTER

    def route_change(route: RouteChangeEvent) -> None:
        page.views.clear()
        match page.route:
            case "/":
                page.views.append(home(page=page))
            case "/projects":
                page.views.append(projects(page=page))
        page.update()
        logger.info(route)

    def view_pop(view: RouteChangeEvent) -> None:
        page.views.pop()
        top_view: View = page.views[-1]
        page.go(route=str(object=top_view.route))
        logger.info(view)

    page.on_route_change = route_change
    page.on_view_pop = view_pop  # type: ignore
    page.go(route=page.route)


app(
    target=main,
    view=AppView.WEB_BROWSER,
)
