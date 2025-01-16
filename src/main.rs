use dioxus::prelude::*;
use dioxus_router::prelude::*;

const MAIN_CSS: Asset = asset!("/assets/main.css");
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
        document::Link {
            rel: "icon",
            href: "https://avatars.githubusercontent.com/u/77013511?v=4",
        }
        document::Link { rel: "stylesheet", href: MAIN_CSS }
        document::Link { rel: "stylesheet", href: TAILWIND_CSS }
        Router::<Route> {}
    }
}

#[component]
fn NavBar() -> Element {
    rsx! {
        div { id: "navbar", class: "flex justify-between items-center p-4",
            Link { to: Route::Home {}, "Home" }
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
            p { class: "animate-fadeIn", "Hi, My name is" }
            h1 { class: "font-black text-5xl animate-fadeIn", "Mohamed Hisham Abdelzaher" }
            p { class: "animate-fadeIn", "Welcome to my personal website!" }
        }
    }
}

// Component for each route
#[component]
fn About() -> Element {
    rsx! {
        section {
            id: "about",
            class: "flex flex-col items-center justify-center text-xl h-screen",
            h2 { "About Me" }
            p { "I am an AI engineer with a passion for Rust." }
        }
    }
}

#[component]
fn Projects() -> Element {
    rsx! {
        section {
            id: "projects",
            class: "flex flex-col items-center justify-center text-xl h-screen",
            h2 { "Projects" }
            p { "Here are some of my projects." }
        }
    }
}

#[component]
fn Contact() -> Element {
    rsx! {
        section {
            id: "contact",
            class: "flex flex-col items-center justify-center text-xl h-screen",
            h2 { class: "font-black text-5xl m-4", "Contact" }
            p {
                "Email: "
                Link { to: "mailto:mohamed.hisham.abdelzaher@gmail.com",
                    "mohamed.hisham.abdelzaher@gmail.com"
                }
            }
            br {}
            Link { to: "https://github.com/MH0386", page: "_blank",
                img {
                    src: "https://media.licdn.com/dms/image/v2/C560BAQFmuLSyL1nlPA/company-logo_200_200/company-logo_200_200/0/1678231359043/github_logo?e=1744848000&v=beta&t=qW6Tnwirtj4LeqIVdJcdehHqLSUWbn5XzdP0Dr3fog0",
                    alt: "GitHub",
                    class: "inline-block w-4 h-4 mr-2",
                }
                "MH0386"
            }
            Link { to: "https://www.linkedin.com/in/MH0386", page: "_blank",
                img {
                    src: "https://media.licdn.com/dms/image/v2/C560BAQHaVYd13rRz3A/company-logo_200_200/company-logo_200_200/0/1638831590218/linkedin_logo?e=1744848000&v=beta&t=YzSWtVgDjOjlkQ8WhICYnhJZYSpSBszznZUaAs-Alac",
                    alt: "LinkedIn",
                    class: "inline-block w-4 h-4 mr-2",
                }
                "MH0386"
            }
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
