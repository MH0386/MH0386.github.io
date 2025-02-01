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
            p { class: "animate-fadeIn", "Welcome to my personal website! (Alpha)" }
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
                    src: "https://pbs.twimg.com/profile_images/1633247750010830848/8zfRrYjA_400x400.png",
                    alt: "GitHub",
                    class: "inline-block w-4 h-4 mr-2",
                }
                "GitHub @MH0386"
            }
            Link { to: "https://gitlab.com/MH0386", page: "_blank",
                img {
                    src: "https://pbs.twimg.com/profile_images/1526219998741647362/8KKDKESj_400x400.jpg",
                    alt: "GitLab",
                    class: "inline-block w-4 h-4 mr-2",
                }
                "GitLab @MH0386"
            }
            Link { to: "https://www.linkedin.com/in/MH0386", page: "_blank",
                img {
                    src: "https://pbs.twimg.com/profile_images/1661161645857710081/6WtDIesg_400x400.png",
                    alt: "LinkedIn",
                    class: "inline-block w-4 h-4 mr-2",
                }
                "LinkedIn @MH0386"
            }
            Link {
                to: "https://qabilah.com/profile/MH0386/professional-profile",
                page: "_blank",
                img {
                    src: "https://pbs.twimg.com/profile_images/1807856405522583552/1_rr1lKY_400x400.jpg",
                    alt: "Qabilah",
                    class: "inline-block w-4 h-4 mr-2",
                }
                "Qabilah @MH0386"
            }
            Link { to: "https://www.hf.co/MH0386", page: "_blank",
                img {
                    src: "https://pbs.twimg.com/profile_images/1348748676282388482/nr8ZuLBE_400x400.jpg",
                    alt: "Hugging Face",
                    class: "inline-block w-4 h-4 mr-2",
                }
                "HuggingFace @MH0386"
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
                class: "flex flex-col items-center justify-center text-xl h-screen",
                src: "https://mh0386.github.io/resume.pdf",
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
