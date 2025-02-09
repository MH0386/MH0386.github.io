use dioxus::prelude::*;
use dioxus_i18n::{prelude::*, t, unic_langid::langid};
use dioxus_router::prelude::*;

const MAIN_CSS: Asset = asset!("/assets/main.css");

#[derive(Debug, Clone, Routable, PartialEq)]
enum Route {
    #[layout(NavBar)]
    #[route("/")]
    Home {},
    #[route("/about")]
    About {},
    #[route("/projects")]
    Projects {},
    #[route("/certificates")]
    Certificates {},
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
        Router::<Route> {}
    }
}

#[component]
fn NavBar() -> Element {
    use_init_i18n(|| {
        I18nConfig::new(langid!("en-US"))
            .with_locale((langid!("en-US"), include_str!("./locale/en-US.ftl")))
            .with_locale((langid!("ar-EG"), include_str!("./locale/ar-EG.ftl")))
    });
    let mut i18n: I18n = i18n();
    let change_to_english = move |_| i18n.set_language(langid!("en-US"));
    let change_to_arabic = move |_| i18n.set_language(langid!("ar-EG"));
    rsx! {
        div { id: "navbar",
            Link { to: Route::Home {}, "Home" }
            Link { to: Route::About {}, "About" }
            Link { to: Route::Projects {}, "Projects" }
            Link { to: Route::Certificates {}, "Certificates" }
            Link { to: Route::Contact {}, "Contact" }
            Link { to: Route::Resume {}, "Resume" }
            if i18n.language() != langid!("en-US") {
                button { onclick: change_to_english,
                    label { "English" }
                }
            }
            if i18n.language() != langid!("ar-EG") {
                button { onclick: change_to_arabic,
                    label { "العربية" }
                }
            }
        }
        Outlet::<Route> {}
    }
}

#[component]
fn Home() -> Element {
    rsx! {
        section { id: "myname_section",
            p { {t!("greeting")} }
            h1 { {t!("myname")} }
            p { {t!("description")} }
        }
    }
}

#[component]
fn About() -> Element {
    rsx! {
        section { id: "about",
            h2 { {t!("about_title")} }
            p { {t!("about_description")} }
        }
    }
}

#[component]
fn Projects() -> Element {
    rsx! {
        section { id: "projects",
            h2 { "Projects" }
            br {}
            div { id: "projects_list",
                div { id: "projects_item",
                    h4 { "Toys Images" }
                    p { "Images of Panda and Rabbit Toys" }
                    p { "Type: Dataset" }
                    br {}
                    a {
                        href: "https://kaggle.com/datasets/mh0386/toys-images",
                        page: "_blank",
                        img {
                            src: "https://pbs.twimg.com/profile_images/1573129499343978498/03a7wgfE_400x400.jpg",
                            alt: "kaggle",
                            id: "projects_item_icon",
                        }
                        "Kaggle"
                    }
                    br {}
                    a {
                        href: "https://github.com/MH0386/toys_dataset",
                        page: "_blank",
                        img {
                            src: "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
                            alt: "github",
                            id: "projects_item_icon",
                        }
                        "GitHub"
                    }
                    br {}
                    a {
                        href: "https://hf.co/datasets/MH0386/toys_images",
                        page: "_blank",
                        img {
                            src: "https://huggingface.co/front/assets/huggingface_logo-noborder.svg",
                            alt: "huggingface",
                            id: "projects_item_icon",
                        }
                        "HuggingFace"
                    }
                }
            }
        }
    }
}

#[component]
fn Certificates() -> Element {
    rsx! {
        section { id: "certificates",
            h2 { "Certificates" }
            br {}
            div { id: "certificates_list",
                div { id: "certificates_item",
                    Link {
                        to: "https://kaggle.com/learn/certification/mh0386/python",
                        page: "_blank",
                        h4 { "Python" }
                        p { "Issuing Organization: Kaggle" }
                        p { "Issue Date: March, 2023" }
                    }
                }
                div { id: "certificates_item",
                    Link {
                        to: "https://coursera.org/verify/specialization/3BRYQRFUD5C6",
                        page: "_blank",
                        h4 { "Machine Learning Specialization" }
                        p { "Issuing Organization: Stanford University, DeepLearning.AI" }
                        p { "Issue Date: June, 2023" }
                    }
                    br {}
                    div { id: "certificates_item",
                        Link {
                            to: "https://coursera.org/verify/XX8THJA26UTS",
                            page: "_blank",
                            h4 { "Supervised Machine Learning: Regression and Classification" }
                            p { "Issue Date: February, 2023" }
                        }
                    }
                    br {}
                    div { id: "certificates_item",
                        Link {
                            to: "https://coursera.org/verify/HM55XWLDYPA3",
                            page: "_blank",
                            h4 { "Advanced Learning Algorithms" }
                            p { "Issue Date: March, 2023" }
                        }
                    }
                    br {}
                    div { id: "certificates_item",
                        Link {
                            to: "https://coursera.org/verify/B4NKPXD9UN9Z",
                            page: "_blank",
                            h4 { "Unsupervised Learning, Recommenders, Reinforcement Learning" }
                            p { "Issue Date: June, 2023" }
                        }
                    }
                }
            }
        }
    }
}

#[component]
fn Contact() -> Element {
    rsx! {
        section { id: "contact",
            h2 { "Contact" }
            Link {
                to: "mailto:mohamed.hisham.abdelzaher@gmail.com",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1313394640393957378/L0W5hykJ_400x400.jpg",
                    alt: "Gmail",
                    id: "contact_icon",
                }
                "mohamed.hisham.abdelzaher@gmail.com"
            }
            br {}
            Link {
                to: "https://github.com/MH0386",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1633247750010830848/8zfRrYjA_400x400.png",
                    alt: "GitHub",
                    id: "contact_icon",
                }
                "GitHub @MH0386"
            }
            Link {
                to: "https://gitlab.com/MH0386",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1526219998741647362/8KKDKESj_400x400.jpg",
                    alt: "GitLab",
                    id: "contact_icon",
                }
                "GitLab @MH0386"
            }
            Link {
                to: "https://www.linkedin.com/in/MH0386",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1661161645857710081/6WtDIesg_400x400.png",
                    alt: "LinkedIn",
                    id: "contact_icon",
                }
                "LinkedIn @MH0386"
            }
            Link {
                to: "https://qabilah.com/profile/MH0386/professional-profile",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1807856405522583552/1_rr1lKY_400x400.jpg",
                    alt: "Qabilah",
                    id: "contact_icon",
                }
                "Qabilah @MH0386"
            }
            Link {
                to: "https://www.hf.co/MH0386",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1348748676282388482/nr8ZuLBE_400x400.jpg",
                    alt: "Hugging Face",
                    id: "contact_icon",
                }
                "HuggingFace @MH0386"
            }
            Link {
                to: "https://www.x.com/MH0386",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1683899100922511378/5lY42eHs_400x400.jpg",
                    alt: "X",
                    id: "contact_icon",
                }
                "X @MH0386"
            }
            Link {
                to: "https://www.kaggle.com/MH0386",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1573129499343978498/03a7wgfE_400x400.jpg",
                    alt: "kaggle",
                    id: "contact_icon",
                }
                "Kaggle @MH0386"
            }
            Link {
                to: "https://ollama.com/mohamedhishamabdelzaher",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1874043413466931204/BRau4SQI_400x400.jpg",
                    alt: "ollama",
                    id: "contact_icon",
                }
                "Ollama @mohamedhishamabdelzaher"
            }
            Link {
                to: "https://app.opensauced.pizza/u/MH0386",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1588597214141509632/uo5sqfVs_400x400.png",
                    alt: "OpenSauced",
                    id: "contact_icon",
                }
                "OpenSauced @MH0386"
            }
            Link {
                to: "https://www.freelancer.com/u/MH0386",
                page: "_blank",
                id: "contact_item",
                img {
                    src: "https://pbs.twimg.com/profile_images/1838452019700600833/TmFzf9uW_400x400.jpg",
                    alt: "Freelancer",
                    id: "contact_icon",
                }
                "Freelancer @MH0386"
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
                src: "https://mohamedhisham.is-a.dev/data/docs/resume.pdf",
                r#type: "application/pdf",
                p {
                    "Your browser does not support PDF embedding. "
                    a { href: "https://mohamedhisham.is-a.dev/data/docs/resume.pdf",
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
