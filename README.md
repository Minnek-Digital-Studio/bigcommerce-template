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

### README.md

Edit this readme file and replace the `{JIRA-KEY}` keyword with related project key from Jira.

### Cornerstone 6+ Only

* Setup Stencil CLI: `stencil init`. Enter the credentials.
* Download the BigCommerce Cornerstone 6.10+ theme from the store: `stencil download`. Be sure the store has the latest version of Cornerstone.
* Add these commands to the `package.json` file:
    * `"dev": "stencil start -o"`. Start the stencil server and open the browser automatically.
    * `"push": "stencil push -a -d -c 1"`. Push the theme to the live store and active it (only for stores in development mode).
    * `"cy:open": "cypress open"`. Open cypress app and setup the environment.
    * `"cy:run": "cypress run"`. Run cypress commands in the background.
    * `"postinstall": "husky install"`. Run husky setup.
* Install extra dependencies: `npm i -D husky @commitlint/config-conventional @commitlint/cli cypress eslint-plugin-cypress cli-color`
* Install the theme dependencies: `npm install`

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
