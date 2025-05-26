from dataclasses import dataclass


@dataclass
class Information:
    name: str = "Mohamed Hisham Abdelzaher"
    email: str = "mohamed.hisham.abdelzaher@gmail.com"
    github: str = "https://github.com/MH0386"
    linkedin: str = "https://www.linkedin.com/in/MH0386"
    twitter: str = "https://twitter.com/MH0386"
    facebook: str = "https://www.facebook.com/mohamed.hisham.abdelzaher"
    website: str = "https://mohamedhisham.is-a.dev"
    bio: str = "AI Developer"
    location: str = "Giza, Egypt"
    age: int = 21


@dataclass
class Project:
    name: str
    description: str
    link: str
    tags: list[str]


@dataclass
class Certificate:
    name: str
    issuer: str
    date: str
    link: str


@dataclass
class Experience:
    name: str
    description: str
    link: str
