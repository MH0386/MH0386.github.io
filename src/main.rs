use dioxus::events::*;
use dioxus::prelude::*;
use dioxus_router::prelude::*;
use global_attributes::class;

const FAVICON: Asset = asset!("/assets/favicon.ico");
const MAIN_CSS: Asset = asset!("/assets/main.css");
const HEADER_SVG: Asset = asset!("/assets/header.svg");
const TAILWIND_CSS: Asset = asset!("/assets/tailwind.css");

#[derive(Debug, Clone, Routable, PartialEq)]
enum Route {
    #[layout(NavBar)]
    #[route("/")]
    Home {},
    #[route("/about")]
    About {},
    #[route("/projects")]
    Projects {},
    #[route("/contact")]
    Contact {},
    #[route("/resume")]
    Resume {},
}

#[component]
fn App() -> Element {
    rsx! {
        document::Link { rel: "icon", href: FAVICON }
        document::Link { rel: "stylesheet", href: MAIN_CSS }
        document::Link { rel: "stylesheet", href: TAILWIND_CSS }
        Router::<Route> {}
    }
}

#[component]
fn NavBar() -> Element {
    rsx! {
        div { id: "navbar", class: "flex justify-between items-center p-4",
            Link { to: Route::About {}, "About" }
            Link { to: Route::Projects {}, "Project" }
            Link { to: Route::Contact {}, "Contact" }
            Link { to: Route::Resume {}, "Resume" }
        }
        Outlet::<Route> {}
    }
}

#[component]
fn Home() -> Element {
    rsx! {
        section {
            id: "myname",
            class: "flex flex-col items-center justify-center text-xl h-screen",
            p { "Hi, My name is" }
            h1 { class: "font-bold text-5xl", "Mohamed Hisham Abdelzaher" }
            p { "Welcome to my personal website!" }
        }
    }
}

// Component for each route
#[component]
fn About() -> Element {
    rsx! {
        section { id: "about",
            class: "flex flex-col items-center justify-center text-xl h-screen",
            h2 { "About Me" }
            p { "I am an AI engineer with a passion for Rust." }
        }
    }
}

#[component]
fn Projects() -> Element {
    rsx! {
        section { id: "projects",
            class: "flex flex-col items-center justify-center text-xl h-screen",
            h2 { "Projects" }
            p { "Here are some of my projects." }
        }
    }
}

#[component]
fn Contact() -> Element {
    rsx! {
        section { id: "contact",
            class: "flex flex-col items-center justify-center text-xl h-screen",
            h2 {class:"m-4", "Contact" }
            p { "Email: " }
            Link {to: "mailto:mohamed.hisham.abdelzaher@gmail.com", "mohamed.hisham.abdelzaher@gmail.com"}
        }
    }
}

#[component]
fn Resume() -> Element {
    rsx! {
        div {
            embed {
                id: "resume",
                src: "https://mh0386.github.io/resume.pdf",
                width: "100%",
                height: "1500vh",
                r#type: "application/pdf",
                p {
                    "Your browser does not support PDF embedding. "
                    a { href: "https://mh0386.github.io/resume.pdf",
                        "Click here to download the PDF instead."
                    }
                }
            }
        }
    }
}

fn main() {
    dioxus::launch(App);
}
