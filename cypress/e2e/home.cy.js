import { lang } from '../support/constants';

const targetUrl = '/';

describe('Check homepage', () => {
    before(() => {
        cy.visit('/', lang);
    });

    it('should visit and load the homepage', () => {
        cy.url().should('include', targetUrl);
    });
});
