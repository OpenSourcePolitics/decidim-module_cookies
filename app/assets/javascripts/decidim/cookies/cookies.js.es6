// This file is the Orejime configuration
// Orejime source : https://github.com/openfed/orejime
// Forked from : https://github.com/empreinte-digitale/orejime


// Here you can defined the cookies used on your platform and allows users to deactivate some unwanted


(() => {
    window.orejimeConfig = {
        appElement: "#app",
        privacyPolicy: "#privacyPolicy",
        gdprCompliant: true,
        default: false,
        logo: false,
        cookieName: "decidim-cc",
        translations: {},
        apps: [
            {
                name: "matomo",
                title: "Matomo",
                cookies: [
                    "matomo_session",
                    "pk_id",
                    "pk_ses",
                ],
                // Here purposes refers to purposes translations defined in locales: en.decidim.components.cookies.modal.purposes
                purposes: ["tracking","analytics"]
            }
        ],
    };
})(window);
