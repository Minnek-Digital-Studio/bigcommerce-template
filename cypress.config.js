const { defineConfig } = require("cypress");

/**
 * @see https://cloud.cypress.io/
 */
module.exports = defineConfig({
    projectId: "<project-id-from-cypress-cloud>",
    e2e: {
        baseUrl: "http://localhost:3000", // stencil server
        setupNodeEvents(on, config) {
            // implement node event listeners here
        },
    },
});
