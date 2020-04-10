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
        lang: "en",
        cookieName: "decidim",
        debug: true,
        translations: {
            en: {
                consentModal: {
                    description: "Here is an example of Orejime. View the source code to see how everything is done.",
                },
                decidim: {
                    description: "Allows to check if the user has accepted the cookies",
                },
                "inline-tracker": {
                    description: "Example of an inline tracking script that sets a dummy cookie",
                },
                "external-tracker": {
                    description: "Example of an external tracking script that sets a dummy cookie",
                },
                "always-on": {
                    description: "this <a href=\"http://example.com\">example</a> app will not set any cookie",
                },
                "disabled-by-default": {
                    description: "this example app will not set any cookie",
                },
                purposes: {
                    analytics: "Analytics",
                    security: "Security",
                    ads: "Ads",
                    tracking: "Tracking",
                    checking: "Check User's acceptance"
                }
            },
        },
        apps: [
            {
                name: "matomo",
                title: "Matomo",
                cookies: [
                    "matomo_session",
                    "pk_id",
                    "pk_ses",
                ],
                purposes: ["tracking","analytics"]
            },
            {
                name: "decidim",
                title: "Decidim CC",
                cookies: ["decidim-cc"],
                purposes: ["checking"],
                required: true
            }
        ],
    };
})(window);
