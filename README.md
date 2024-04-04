<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://example.com/">
    <img src="https://via.placeholder.com/300x200/fff/000.png" alt="Logo">
  </a>

  <h3 align="center">Project Name</h3>
  <p align="align">BigCommerce Storefront Theme</p>
  <p align="center">
    <br />
    <a href="https://minnek.atlassian.net/wiki/spaces/{JIRA-KEY}/overview"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://example.com/">View Demo</a>
    ·
    <a href="https://minnek.atlassian.net/jira/software/projects/{JIRA-KEY}/issues/">Report Bug</a>
    ·
    <a href="https://minnek.atlassian.net/jira/software/projects/{JIRA-KEY}/issues/">Request Feature</a>
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#installation-and-setup-guide">Installation and Setup Guide</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#stack">Stack</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

<!-- meta image path: meta/desktop_light.png -->
![Project Name](https://via.placeholder.com/1200x800/fff/000.png)

Project name description.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- INSTALLATION -->
## Installation and Setup Guide

### Prepare

Before to start using this template be sure you have an empty repository. Then you can initialize this command in your terminal:

```bash
curl -o- https://raw.githubusercontent.com/minnek-digital-studio/bigcommerce-template/master/setup.sh | bash
```

This command will:
- Download the latest version of cornerstone and will be commit it
- Overwrite the cornerstone files witth this template and will be commit it
- Install the NPM packages

### README.md

Edit this readme file and replace the `{JIRA-KEY}` keyword with related project key from Jira.

### Cornerstone 6+ Only

* Setup Stencil CLI: `stencil init` and enter the credentials.
* Add these commands to the `package.json` file:

```json
"start:dev": "npm run start",
"start": "stencil start -o --variation <variation-name>  -c 1",
"push": "echo \"no\" | stencil push -c 1",
"theme:check": "npx grunt check",
"stylelint": "npx stylelint **/*.scss",
"stylelint:fix": "npx stylelint --fix **/*.scss",
"cy:open": "cypress open",
"cy:run": "export \"$(grep -vE \"^(#.*|/s*)$\" .env)\"; npx cypress run --headless --record --key $CYPRESS_KEY --browser chrome",
"release": "release-it",
"postinstall": "husky install"
```

### Code Owners

* Define who is the code owner of the project. Sometimes the code owner is the project lead or maybe the team lead of your team, this info can find it in the Jira project, learn more about [code owners](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners).

### CSS

* Add the code below to the end of the file `/assets/scss/theme.scss`.

```scss
@import "ysw/settings/settings";
@import "ysw/tools/tools";
@import "ysw/generic/generic";
@import "ysw/elements/elements";
@import "ysw/components/components";
@import "ysw/layouts/layouts";
@import "ysw/utilities/utilities";
@import "ysw/vendor/vendor";
```

* You can find the folder structure in `/assets/scss/ysw`. The folder have the explanation.

### JavaScript

* The javascript files structure are in `/assets/js/ysw/`. The only thing you need to do is to import the modules files into the big commerce corresponding modules page.

### Templates Structure

* All the templates for development are in `/templates/ysw`. The folder has a readme file with an explanation.

<p align="right">(<a href="#top">back to top</a>)</p>

### VSC

* Add this setup to the `settings.json` in the `.vscode` folder to:

1. Highlight the handlebars files
2. Enable stylelint new version

```json
{
  "files.associations": {
    "*.html": "handlebars"
  },

  "stylelint.validate": [
    "css",
    "scss"
  ]
}
```

<p align="right">(<a href="#top">back to top</a>)</p>

## Repository Settings

- Create production environment to store the credentials for deployment using secrets:
    - `URL` with the value of private storefront url
    - `TOKEN` with value of Stencil CLI token with push scope
- Create repository secrets for:
    - `CYPRESS_KEY` with the value of key from cypress cloud

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, create a pull request. You can also simply open an issue with the tag "enhancement".

* Create your Feature Branch (`git checkout -b feature/JIRA-ID`)
* Commit your Changes (`git commit -m 'feat: JIRA-ID feature description'`)
* Push to the Branch (`git push origin feature/JIRA-ID`)
* Open a Pull Request (assign yourself to the PR, and add the Code Reviewer)
* Follow the project Pull Request Guidelines

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- STACK -->
## Stack

* Node.js 18
* Stencil CLI 7+
* ESLint
* Stylelint
* CommitLint (Conventional Commits)
* Cypress (E2E Test)
* Jest (Unit Test)
* Husky (Git Hooks)
* Grunt
* Editorconfig
* GitHub Actions
* GitHub Code Owners

<p align="right">(<a href="#top">back to top</a>)</p>
