import flet as ft  # type: ignore
from pages.home import home
from pages.projects import projects

def main(page: ft.Page):
    page.title = "Mohamed Hisham Abdelzaher"
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER
    
    def route_change(route: ft.RouteChangeEvent):
        page.views.clear()
        match page.route:
            case "/":
                page.views.append(home(page))
            case "/projects":
                page.views.append(projects(page))
        page.update()
        print(route)

    def view_pop(view: ft.RouteChangeEvent):
        page.views.pop()
        top_view = page.views[-1]
        page.go(route=top_view.route)
        print(view)

    page.on_route_change = route_change
    page.on_view_pop = view_pop
    page.go(page.route)

ft.app(
    main,
    view=ft.AppView.WEB_BROWSER,
)

