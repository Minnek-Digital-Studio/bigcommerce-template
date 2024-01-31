/**
 * We need to set the accept language in the headers to avoid
 * a Stencil CLI error.
 *
 * Use this object on everisy cy.visit('<url>', lang) function.
 *
 * @see https://github.com/bigcommerce/stencil-cli/pull/1114
 */
const lang = {
    onBeforeLoad(win) {
        Object.defineProperty(win.navigator, 'language', { value: 'en-US' });
        Object.defineProperty(win.navigator, 'languages', { value: ['en'] });
        Object.defineProperty(win.navigator, 'accept_languages', { value: ['en'] });
    },
    headers: {
        'Accept-Language': 'en',
    },
};

export { lang };
