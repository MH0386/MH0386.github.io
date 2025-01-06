use dioxus::events::*;
use dioxus::prelude::*;
use dioxus_router::prelude::*;

const FAVICON: Asset = asset!("/assets/favicon.ico");
const MAIN_CSS: Asset = asset!("/assets/main.css");

#[derive(Routable, Clone)]
enum Route {
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
        Router::<Route> {}
    }
}

#[component]
fn NavBar() -> Element {
    rsx! {
        nav {
            ul {
                li {
                    Link { id: "about_link", to: Route::About {},
                        button { id: "about_button",
                            p { id: "about_text", "About" }
                        }
                    }
                    Link { id: "projects_link", to: Route::Projects {},
                        button { id: "projects_button",
                            p { id: "projects_text", "Projects" }
                        }
                    }
                    Link { id: "contact_link", to: Route::Contact {},
                        button { id: "contact_button",
                            p { id: "contact_text", "Contact" }
                        }
                    }
                    Link { id: "resume_link", to: Route::Resume {},
                        button { id: "resume_button",
                            p { id: "resume_text", "Resume" }
                        }
                    }
                }
            }
        }
        Outlet::<Route> {}
    }
}

#[component]
fn Home() -> Element {
    rsx! {
        NavBar {}
        section { id: "myname",
            p { "Hi, My name is" }
            h1 { "Mohamed Hisham Abdelzaher" }
            p { "Welcome to my personal website!" }
        }
    }
}

// Component for each route
#[component]
fn About() -> Element {
    rsx! {
        section { id: "about",
            h2 { "About Me" }
            p { "I am an AI engineer with a passion for Rust." }
        }
    }
}

#[component]
fn Projects() -> Element {
    rsx! {
        section { id: "projects",
            h2 { "Projects" }
            p { "Here are some of my projects." }
        }
    }
}

#[component]
fn Contact() -> Element {
    rsx! {
        section { id: "contact",
            h2 { "Contact" }
            p { "Email: " } 
            a { href: "mailto:mohamed.hisham.abdelzaher@gmail.com", "mohamed.hisham.abdelzaher@gmail.com" }
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
