# -*- coding: utf-8 -*-
using Documenter
using PkgCore
using PkgOther

const NAME = "Walter Dal'Maz Silva"
const MAIL = "walter.dalmazsilva.manager@gmail.com"
const GITHUBUSER = "wallytutor"
const SITENAME = "MultiPkgTutorial.jl"
const REPOLINK = "https://github.com/$(GITHUBUSER)/$(SITENAME)"

DocMeta.setdocmeta!(PkgCore, :DocTestSetup, :(using PkgCore))
DocMeta.setdocmeta!(PkgOther, :DocTestSetup, :(using PkgOther))

format = Documenter.HTML(;
    prettyurls = get(ENV, "CI", "false") == "true",
    canonical  = "https://$(GITHUBUSER).github.io/$(SITENAME)",
    repolink   = REPOLINK,
    edit_link  = "main",
    assets     = String[],
)

pages  = ["Home" => "index.md"]

makedocs(;
    modules  = [
        PkgCore,
        PkgOther
    ],
    format   = format,
    clean    = true,
    sitename = SITENAME,
    authors  = "$(NAME) <$(MAIL)>",
    repo     = "$(REPOLINK)/blob/{commit}{path}#{line}",
    pages    = pages
)

deploydocs(;
    repo="github.com/$(GITHUBUSER)/$(SITENAME)",
    devbranch="main",
)
